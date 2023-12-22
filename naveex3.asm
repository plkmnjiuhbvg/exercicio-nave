
jmp main

;variaveis
Nave: var #1

main:
	Loadn r0, #1100			
	store posNave, r0	
	
	loadn r6, #0
	loadn r1, #0 
	
loop:

    inc r0;
    outchar r1, r0
    push r0
    push r1

    call delay
    jmp loop

delay: 
  loadn r1, #5
    delay_volta2:
        loadn r0, #3000
    delay_volta1:
        dec r0
        jnz delay_volta1
    dec r1
    jnz delay_volta2

    pop r0
    pop r1 
  rts