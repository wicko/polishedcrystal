_DoFadePalettes::
; w(BG|OB)Pals: Current palettes
; wUnkn(BG|OB)Pals: Palettes we're fading towards
; c: Fade duration
; wPalFadeMode can be 0 (fade everything), 1 (fade BG), 2 (fade OBJ)
	ld a, [rSVBK]
	push af
	push hl
	push de
.restart_dofade
	push bc
	ld a, BANK(wBGPals)
	ld [rSVBK], a

	; No matter what, we always take up to 31 color fade steps.
	; Evenly divide DelayFrames in case the fade duration is more.
	ld a, c
	cp 32
	ld [wPalFadeDelayFrames], a
	ld [wPalFadeDelay], a
	jr c, .delay_ok
	ld a, 31
	ld [wPalFadeDelayFrames], a

.delay_ok
	and a
	jr nz, .outer_loop
	call SetPalettes
	jp .done

.outer_loop
	ld a, [wPalFadeMode]
	and PALFADE_WHICH
	ld hl, wBGPals
	ld d, 4 * 16 ; colors, palettes
	jr z, .inner_loop
	dec a
	ld d, 4 * 8
	jr z, .inner_loop
	ld hl, wOBPals
.inner_loop
	push de
	ld a, [hli]
	ld e, a
	ld d, [hl]
	ld a, [wPalFadeMode]
	bit PALFADE_FLASH, a
	jr z, .no_flash
	ld bc, 0
	dec hl
	jr .got_destination

.no_flash
	ld bc, wUnknBGPals - wBGPals
	add hl, bc
	ld a, [hld]
	ld b, a
	ld c, [hl]
	push bc
	ld bc, wBGPals - wUnknBGPals
	add hl, bc
	pop bc

.got_destination
	; de: active pals, bc: pals we're fading towards (high endian)
	push hl

	; Red
	ld a, c
	and %00011111
	ld l, a
	ld a, e
	and %00011111
	call .fadeColorStep
	ld a, e
	and %11100000
	or l
	ld e, a

	; Green
	push bc
	call .getGreen
	ld l, a
	ld b, d
	ld c, e
	call .getGreen
	pop bc
	call .fadeColorStep
	ld a, l
	rlca
	rlca
	rlca
	rlca
	rlca
	and %11100000
	ld h, a
	ld a, e
	and %00011111
	or h
	ld e, a
	srl l
	srl l
	srl l
	ld a, d
	and %01111100
	or l
	ld d, a

	; Blue
	ld a, b
	call .getBlue
	ld l, a
	ld a, d
	call .getBlue
	call .fadeColorStep
	sla l
	sla l
	ld a, d
	and %00000011
	or l
	ld d, a

	; Store changed color
	pop hl
	ld a, e
	ld [hli], a
	ld a, d
	ld [hli], a
	pop de
	dec d
	jr nz, .inner_loop
	call .FadeDelay
	ld a, [wPalFadeDelayFrames]
	dec a
	ld [wPalFadeDelayFrames], a
	jp nz, .outer_loop
.done
	pop bc
	ld a, [wPalFadeMode]
	bit PALFADE_FLASH, a
	res PALFADE_FLASH, a
	ld [wPalFadeMode], a
	jp nz, .restart_dofade
	pop de
	pop hl
	pop af
	ld [rSVBK], a
	ret

.getGreen:
	srl b
	rr c
	srl b
	rr c
	ld a, c
	rrca
.getBlue:
	rrca
	rrca
	and %00011111
	ret

.fadeColorStep:
; Perform a single color fading step
; a: active color, l: color we're fading towards
	cp l
	ret z
	ld h, a
	push bc
	ld b, 0
	jr nc, .dec
	ld h, l
	ld l, a
	inc b
.dec
	; Check color difference
	ld a, h
	sub l
	ld c, a

	ld a, [wPalFadeDelayFrames]
	cp c
	jr c, .dist_is_big

	; Approximates linear fading
	; TODO: actual linear fading
	push bc
	call SimpleDivide
	and a
	ld a, b
	pop bc
	jr z, .no_remainder
	dec a
	jr z, .change_ok

.no_remainder
	cp c
	jr z, .change_ok
	jr nc, .no_change
.change_ok
	ld a, 1
	jr .got_change
.no_change
	xor a
	jr .got_change

.dist_is_big
	push bc
	ld b, c
	ld a, [wPalFadeDelayFrames]
	ld c, a
	ld a, b
	call SimpleDivide
	ld a, b
	pop bc
.got_change
	ld c, a
	ld a, h
	sub c
	ld h, a
	ld a, l
	add c
	ld l, a
	dec b
	pop bc
	ret z
	ld l, h
	ret

.FadeDelay:
	ld a, [wPalFadeDelayFrames]
	ld c, a
	ld hl, wPalFadeDelay
	ld a, [hl]
	call SimpleDivide
	ld a, [hl]
	sub b
	ld [hl], a
	ld c, b
	ld a, 1
	ld [hCGBPalUpdate], a
	jp DelayFrames
