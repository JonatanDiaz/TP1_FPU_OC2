
global suma_vf

section .data
p0 dd 0.0
recicler dd 0.0

section .text

suma_vf:
    push ebp
    mov ebp, esp 
    
    mov ebx, [ebp+8] ; puntero al vector
    mov ecx, [ebp+12] ; cantidad de numeros en el vector
    
    fld dword [p0]
       
comparar:
    cmp ecx, 0
    jle fin
    
    fld dword [ebx]
    fadd st1, st0
    fstp dword [recicler]
    sub ecx, 1
    add ebx, 4
    jmp comparar
    
fin:
    fst dword [eax]
    
    mov esp, ebp
    pop ebp    
    ret
