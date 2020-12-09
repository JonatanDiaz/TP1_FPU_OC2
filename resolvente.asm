
global resolvente

section .data

discriminante dd 0.0
n4 dd -4.0
n1 dd -1.0
p2 dd  2.0
pila dd 0.0
recicler dd 0.0


section .text

resolvente:
    push ebp
    mov ebp, esp 
    
    mov eax, [ebp+8] ; valor a
    mov ebx, [ebp+12] ; valor b
    mov ecx, [ebp+16] ; valor c
    mov edx, [ebp+20] ; puntero resultado a
    mov edi, [ebp+24] ; puntero resultado b
    
    fld dword [ebp+12]
    fmul st0, st0
    
    fld dword [n4]
    fld dword [ebp+8]
    fmul st0, st1
    fld dword [ebp+16]
    fmul st0, st1
    fadd st0, st3
    
    fsqrt
    fstp dword [discriminante]
    
    ;fst dword [edx]
    
    fstp dword [recicler]
    fstp dword [recicler]
    fstp dword [recicler]
    
    fld dword [ebp +8]
    fld dword [p2]
    fmul st0, st1
    
    fld dword [discriminante]
    fld dword [ebp +12]
    fld dword [n1]
    fmul st0, st1
    fadd st0, st2
    fdiv st0, st3
    
    fstp dword [edx]
    fstp dword [recicler]
    fstp dword [recicler]
    fstp dword [recicler]
    
    
    ;calculo el 2do resultado
    
    fld dword [ebp +8]
    fld dword [p2]
    fmul st0, st1
    
    fld dword [n1]
    fld dword [discriminante]
    fmul st0, st1
    fld dword [ebp+12]
    fmul st0 , st2
    fadd st0, st1
    fdiv st0, st3
    
    fstp dword [edi]      
    
    mov esp, ebp
    pop ebp    
    ret
