; Hc/NtGdiBitBlt
; This file was automatically generated by Highcall's syscall generator.

IFDEF RAX
; 64bit

EXTERNDEF sciGdiBitBlt:DWORD

.DATA
.CODE

HcGdiBitBlt PROC
	mov r10, rcx
	mov eax, sciGdiBitBlt
	syscall
	ret
HcGdiBitBlt ENDP

ELSE
; 32bit

EXTERNDEF C sciGdiBitBlt:DWORD

.586			  
.MODEL FLAT, C   
.STACK
.DATA
.CODE

ASSUME FS:NOTHING

HcGdiBitBlt PROC
	mov eax, sciGdiBitBlt
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
HcGdiBitBlt ENDP

ENDIF

END