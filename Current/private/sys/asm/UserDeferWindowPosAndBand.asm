; Hc/NtUserDeferWindowPosAndBand
; This file was automatically generated by Highcall's syscall generator.

IFDEF RAX
; 64bit

EXTERNDEF sciUserDeferWindowPosAndBand:DWORD

.DATA
.CODE

HcUserDeferWindowPosAndBand PROC
	mov r10, rcx
	mov eax, sciUserDeferWindowPosAndBand
	syscall
	ret
HcUserDeferWindowPosAndBand ENDP

ELSE
; 32bit

EXTERNDEF C sciUserDeferWindowPosAndBand:DWORD

.586			  
.MODEL FLAT, C   
.STACK
.DATA
.CODE

ASSUME FS:NOTHING

HcUserDeferWindowPosAndBand PROC
	mov eax, sciUserDeferWindowPosAndBand
	mov ecx, fs:[0c0h]
	test ecx, ecx
	jne _wow64
	lea edx, [esp + 4]
	INT 02eh
	ret
	_wow64:
	xor ecx, ecx
	lea edx, [esp + 4h]
	call dword ptr fs:[0c0h]
	ret
HcUserDeferWindowPosAndBand ENDP

ENDIF

END