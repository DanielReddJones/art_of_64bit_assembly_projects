includelib kernel32.lib

        extrn __imp_GetStdHandle:proc
        extrn __imp_WriteFile:proc

        .CODE
hwStr   byte    "Hello World!"
hwLen   =       $-hwStr

main    proc
        lea     rbx, hwstr
        sub     rsp, 8
        mov     rdi, rsp

        sub     rsp, 030h

        mov     rcx, -11
        call    qword ptr __imp_GetStdHandle

        mov     qword ptr [rsp + 4 * 8], 0
        mov     r9, rdi
        mov     r8d, hwLen
        lea     rdx, hwStr
        mov     rcx, rax
        call    qword ptr __imp_WriteFile
        add     rsp, 38h
        ret
main    ENDP
END