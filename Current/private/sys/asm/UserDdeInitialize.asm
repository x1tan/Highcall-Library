; Hc/NtUserDdeInitialize
; This file was automatically generated by Highcall's syscall generator.

IFDEF RAX
; 64bit

EXTERNDEF sciUserDdeInitialize:DWORD

.DATA
.CODE

HcUserDdeInitialize PROC
	mov r10, rcx
	mov eax, sciUserDdeInitialize
	syscall
	ret
HcUserDdeInitialize ENDP

ELSE
; 32bit

EXTERNDEF C sciUserDdeInitialize:DWORD

.586			  
.MODEL FLAT, C   
.STACK
.DATA
.CODE

ASSUME FS:NOTHING

HcUserDdeInitialize PROC
	mov eax, sciUserDdeInitialize
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
HcUserDdeInitialize ENDP

ENDIF

END