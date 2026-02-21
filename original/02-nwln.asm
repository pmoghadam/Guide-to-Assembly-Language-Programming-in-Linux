%include "io.mac"

.DATA

	char db "C"

.CODE
	.STARTUP

	PutCh "A"
	nwln

	mov AL, "B"
	PutCh AL
	nwln

	PutCh [char]
	nwln

	.EXIT
