; Hc/NtUserRegisterManipulationThread
; This file was automatically generated by Highcall's syscall generator.

IFDEF RAX
; 64bit

EXTERNDEF sciUserRegisterManipulationThread:DWORD

.DATA
.CODE

HcUserRegisterManipulationThread PROC
	mov r10, rcx
	mov eax, sciUserRegisterManipulationThread
	syscall
	ret
HcUserRegisterManipulationThread ENDP

ELSE
; 32bit

EXTERNDEF C sciUserRegisterManipulationThread:DWORD

.586			  
.MODEL FLAT, C   
.STACK
.DATA
.CODE

ASSUME FS:NOTHING

HcUserRegisterManipulationThread PROC
	mov eax, sciUserRegisterManipulationThread
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
HcUserRegisterManipulationThread ENDP

ENDIF

END