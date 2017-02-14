; Hc/NtReadFile
; This file was automatically generated by Highcall's syscall generator.

IFDEF RAX
; 64bit

EXTERNDEF sciReadFile:DWORD

.DATA
.CODE

HcReadFile PROC
	mov r10, rcx
	mov eax, sciReadFile
	syscall
	ret
HcReadFile ENDP

ELSE
; 32bit

EXTERNDEF C sciReadFile:DWORD

.586			  
.MODEL FLAT, C   
.STACK
.DATA
.CODE

ASSUME FS:NOTHING

HcReadFile PROC
	mov eax, sciReadFile
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
HcReadFile ENDP

ENDIF

END