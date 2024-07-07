#!/usr/bin/bash

as --64 -o etude1.o -g etude1.asm 
ld -m elf_x86_64 -o etude1 etude1.o
