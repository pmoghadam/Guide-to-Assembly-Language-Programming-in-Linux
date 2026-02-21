%include "io64.mac"

.DATA

	char db "C"

.CODE
	.STARTUP

	PutCh "A"

	mov AL, "B"
	PutCh AL

	PutCh [char]

	.EXIT
