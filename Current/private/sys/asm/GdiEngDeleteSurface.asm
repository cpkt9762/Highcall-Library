; Hc/NtGdiEngDeleteSurface
; This file was automatically generated by Highcall's syscall generator.

IFDEF RAX
; 64bit

EXTERNDEF sciGdiEngDeleteSurface:DWORD

.DATA
.CODE

HcGdiEngDeleteSurface PROC
	mov r10, rcx
	mov eax, sciGdiEngDeleteSurface
	syscall
	ret
HcGdiEngDeleteSurface ENDP

ELSE
; 32bit

EXTERNDEF C sciGdiEngDeleteSurface:DWORD

.586			  
.MODEL FLAT, C   
.STACK
.DATA
.CODE

ASSUME FS:NOTHING

HcGdiEngDeleteSurface PROC
	mov eax, sciGdiEngDeleteSurface
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
HcGdiEngDeleteSurface ENDP

ENDIF

END