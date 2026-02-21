%include "io.mac"

.DATA

	msg db "hello, world", 0

.CODE
	.STARTUP

	PutStr msg
	nwln

	.EXIT
