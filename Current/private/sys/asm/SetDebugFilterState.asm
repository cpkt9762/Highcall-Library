; Hc/NtSetDebugFilterState
; This file was automatically generated by Highcall's syscall generator.

IFDEF RAX
; 64bit

EXTERNDEF sciSetDebugFilterState:DWORD

.DATA
.CODE

HcSetDebugFilterState PROC
	mov r10, rcx
	mov eax, sciSetDebugFilterState
	syscall
	ret
HcSetDebugFilterState ENDP

ELSE
; 32bit

EXTERNDEF C sciSetDebugFilterState:DWORD

.586			  
.MODEL FLAT, C   
.STACK
.DATA
.CODE

ASSUME FS:NOTHING

HcSetDebugFilterState PROC
	mov eax, sciSetDebugFilterState
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
HcSetDebugFilterState ENDP

ENDIF

END