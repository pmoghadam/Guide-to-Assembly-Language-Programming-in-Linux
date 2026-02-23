%include "io32.mac"

.UDATA
	name resb 50

.DATA

	msg db "What is yourname? ", 0
	hello db "Hello ", 0

.CODE
	.STARTUP

	PutStr msg
	GetStr name, 50
	PutStr hello
	PutStr name
	nwln

	.EXIT
