	
tp1: resolvente.obj resolvente.c
	gcc -m32 -o tp1 resolvente.obj resolvente.c

resolvente.obj: resolvente.asm
	nasm -f win32 -o resolvente.obj resolvente.asm

clean:
	rm resolvente.obj tp1 


