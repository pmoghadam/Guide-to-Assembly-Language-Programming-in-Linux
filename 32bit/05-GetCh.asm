%include "io32.mac"

.UDATA
	char resb 1

.DATA

	qst db "Enter a character: ", 0
	ans db "Your input is: ", 0

.CODE
	.STARTUP

	PutStr qst
	GetCh al
	PutStr ans
	PutCh al
	nwln

	PutStr qst
	GetCh ah
	PutStr ans
	PutCh ah
	nwln

	PutStr qst
	GetCh bl
	PutStr ans
	PutCh bl
	nwln

	PutStr qst
	GetCh [char]
	PutStr ans
	PutCh [char]
	nwln

	.EXIT
