; Hc/NtGdiGetAndSetDCDword
; This file was automatically generated by Highcall's syscall generator.

IFDEF RAX
; 64bit

EXTERNDEF sciGdiGetAndSetDCDword:DWORD

.DATA
.CODE

HcGdiGetAndSetDCDword PROC
	mov r10, rcx
	mov eax, sciGdiGetAndSetDCDword
	syscall
	ret
HcGdiGetAndSetDCDword ENDP

ELSE
; 32bit

EXTERNDEF C sciGdiGetAndSetDCDword:DWORD

.586			  
.MODEL FLAT, C   
.STACK
.DATA
.CODE

ASSUME FS:NOTHING

HcGdiGetAndSetDCDword PROC
	mov eax, sciGdiGetAndSetDCDword
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
HcGdiGetAndSetDCDword ENDP

ENDIF

END