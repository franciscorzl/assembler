/*
sumar_ascii_minus(character, clave):
    aux = character + clave
    if(aux > 122)
        return aux - 26
    else
        return aux

sumar_ascii_mayus(character, clave):
    aux = character + clave

    if(aux > 90)
        return aux - 26
    else
        return aux



 */

.data
    character .ascii "a"
    clave .ascii "2"
.text
.global main

main:
    ldr r0, =character
    ldr r1, =clave
    mov r3, #0
    add r3, r0, r1

    cmp r3, #90
    blt return_aux

    sub r0, r3, #26

    bal end

    return_aux:
        mov r0, r3

    end:
        mov r7, #1
        swi 0
