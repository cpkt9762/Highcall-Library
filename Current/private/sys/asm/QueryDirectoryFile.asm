; Hc/NtQueryDirectoryFile
; This file was automatically generated by Highcall's syscall generator.

IFDEF RAX
; 64bit

EXTERNDEF sciQueryDirectoryFile:DWORD

.DATA
.CODE

HcQueryDirectoryFile PROC
	mov r10, rcx
	mov eax, sciQueryDirectoryFile
	syscall
	ret
HcQueryDirectoryFile ENDP

ELSE
; 32bit

EXTERNDEF C sciQueryDirectoryFile:DWORD

.586			  
.MODEL FLAT, C   
.STACK
.DATA
.CODE

ASSUME FS:NOTHING

HcQueryDirectoryFile PROC
	mov eax, sciQueryDirectoryFile
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
HcQueryDirectoryFile ENDP

ENDIF

END