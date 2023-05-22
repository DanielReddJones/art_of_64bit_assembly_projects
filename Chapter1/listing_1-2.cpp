//
// Created by DanielJones on 5/22/2023.
//
#include <stdio.h>

extern "C"{
    void asmFunc(void);
};

int main(void){
    printf("calling asm program\n");
    asmFunc();
    printf("returned from asm main\n");
}