; Hc/NtUserGetWindowCompositionInfo
; This file was automatically generated by Highcall's syscall generator.

IFDEF RAX
; 64bit

EXTERNDEF sciUserGetWindowCompositionInfo:DWORD

.DATA
.CODE

HcUserGetWindowCompositionInfo PROC
	mov r10, rcx
	mov eax, sciUserGetWindowCompositionInfo
	syscall
	ret
HcUserGetWindowCompositionInfo ENDP

ELSE
; 32bit

EXTERNDEF C sciUserGetWindowCompositionInfo:DWORD

.586			  
.MODEL FLAT, C   
.STACK
.DATA
.CODE

ASSUME FS:NOTHING

HcUserGetWindowCompositionInfo PROC
	mov eax, sciUserGetWindowCompositionInfo
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
HcUserGetWindowCompositionInfo ENDP

ENDIF

END