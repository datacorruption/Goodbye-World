;  nasm -f elf -F stabs goodbye.asm && gcc -o goodbye goodbye.o && ./goodbye

        global  main
        extern  printf

segment .data
        string db 'Goodbye World', 0Ah, 0h


segment .text
main:  
        push    string
        call    printf
        add     esp, 4
        ret
