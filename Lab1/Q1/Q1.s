	AREA RESET,DATA,READONLY
	EXPORT __Vectors
__Vectors
	DCD 0X10001000
	DCD Reset_Handler
	ALIGN
	AREA mycode,CODE,READONLY
	ENTRY
	EXPORT Reset_Handler
Reset_Handler

	LDR R0,=SRC
	LDR R1,=SRC2
	LDR R2,[R1]
	STR R2, [R3]
STOP
	B STOP
	END
SRC DCD 10
SRC2 DCD 3