;
; Maciej 'YTM/Elysium' Witkowiak
; 2.7.2001
;
; this file provides the _dio_write function
;
; unsigned char __fastcall__ dio_write(dhandle_t handle,sectnum_t sect_num,const void *buffer);
; dhandle_t - 16bit (ptr)
; sectnum_t - 16bit
;

	    .import dio_params, setoserror
 	    .export _dio_write

	    .include "geossym.inc"
	    .include "jumptab.inc"

_dio_write:
	jsr dio_params
	jsr WriteBlock
	jmp setoserror