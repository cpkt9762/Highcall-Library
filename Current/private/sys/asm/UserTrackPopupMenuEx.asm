; Hc/NtUserTrackPopupMenuEx
; This file was automatically generated by Highcall's syscall generator.

IFDEF RAX
; 64bit

EXTERNDEF sciUserTrackPopupMenuEx:DWORD

.DATA
.CODE

HcUserTrackPopupMenuEx PROC
	mov r10, rcx
	mov eax, sciUserTrackPopupMenuEx
	syscall
	ret
HcUserTrackPopupMenuEx ENDP

ELSE
; 32bit

EXTERNDEF C sciUserTrackPopupMenuEx:DWORD

.586			  
.MODEL FLAT, C   
.STACK
.DATA
.CODE

ASSUME FS:NOTHING

HcUserTrackPopupMenuEx PROC
	mov eax, sciUserTrackPopupMenuEx
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
HcUserTrackPopupMenuEx ENDP

ENDIF

END