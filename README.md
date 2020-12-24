## Single Cycle CPU
Project for CSC 343 - Computer Systems Design Lab with Professor Izidor Gertner at the City College of New York.
## About The Project
- Design single cycle 32 bit CPU based on the 32 bit MIPS instruction set architecture, as it was described in the class and also described in the textbook.
- The addresses are 32 bits, the data elements are 32 bit integers, the instruction length is 32 bits.
- The instructions that you need to implement are of type R and I type.
- How to Test:
  - Input machine instructions you want to execute into SSRAM memory on the board using switches. You have to store the address of the first instruction in a register.
  - Input data to SSRAM using the method using switches on the board. You have to store the address of the first data element in your data segment in a register.
  - Load the first instruction from SSRAM to IRInstruction Register.
  - Start executing the code step by step, instruction after instruction.
  - Display the final result using Seven Segment display.
## Instructions
### Used to run the code using binary
- 000000 R-Type
	- Functions
	  - 000000 - AND
	  - 000001 - OR
	  - 000010 - +
	  - 000011 - -
	  - 000100 - *
	  - 000101 - /

**Notes:**<br/>
| 000000 | xxrsx | xxrtx | xxrdx | shamt | funtin |
| ------ | ----- | ----- | ----- | ----- | ------ |
| 6	5	5  |   5	 |   5   |   6   |       |        |
- 100011 lw

- 101011 sw

- 000100 beq

### Register:
Array used to store registers and values in those registers.
## Ask me about anything
If there are any questions, feel free to ask them [here](https://github.com/ChibiKev/Single-Cycle-CPU/issues).