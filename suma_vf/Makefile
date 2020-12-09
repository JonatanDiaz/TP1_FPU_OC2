	
sumavf: suma_vf.obj suma_vf.c
	gcc -m32 -o sumavf suma_vf.obj suma_vf.c

suma_vf.obj: suma_vf.asm
	nasm -f win32 -o suma_vf.obj suma_vf.asm

clean:
	rm suma_vf.obj sumavf 


