Instruction:
Used to run the code using binary
-000000 R-Type
	-Functions
	000000 - AND
	000001 - OR
	000010 - +
	000011 - -
	000100 - *
	000101 - /

000000|xxrsx|xxrtx|xxrdx|shamt|funtin
6	5	5    5	   5      6
-100011 lw

-101011 sw

-000100 beq

Register:
Array used to store registers and values in those registers.