.data
	var1:   .int 2
	var2:   .int 10
	result: .int 0
.text
.global main
	main:
		ldr r0, =var1 	//cargo en r0 la direccion de var1
		ldr r1, [r0] 	//cargo en r1  el valor de la direccion de memoria de r0
		
		ldr r0, =var2
		ldr r2, [r0]

		ldr r0, =result
		ldr r3, [r0]

		//Comparaciones
		cmp r1, r2 //compara r1 con r2
		bgt adition // var1 > var2 hacer el salto a #adition
		beq equal // var1 == var2 hacer el salto a #equal
		bal subtraction

		adition:
			add r3, r1, r2 //result = var1 + var2
			bal end
		equal:
			mov r3, r2 // result = var2
			bal end

		subtraction:
			sub r3, r3, r2
			bal end

		end:
			mov r7, #1
			swi 0