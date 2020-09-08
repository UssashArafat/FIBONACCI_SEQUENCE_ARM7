			GLOBAL user_code	

zero     	EQU 0
one			EQU 1	
	
			AREA FIBONACCI, CODE, READONLY
			ENTRY
user_code
			LDR r0, number          ;initialize with the register R0 with input value
							        ;initializing the registers
            MOV r1, #zero
			MOV r2, #zero
			MOV r3, #one
			MOV r4, #zero
			
loop_0		CMP r2, #one            ;setting and calcularting the begining condition 
			MOVLE r1, r2			
			ADDLE r2, r2, #one
			BLE loop_0
			
loop_1		CMP r2, r0		        ;loop for calculating the value
			ADDLE r1, r3, r4
			MOVLE r4, r3
			MOVLE r3, r1			
			ADDLE r2, r2, #one			
			BLE loop_1
									;register R1 holds the value of fibonacci sequence
stop		B stop
							
number		DCD 12
			END