@echo off

goto gen

:gen

nasm.exe -f bin bootloader.asm" -o bootloader.bin"
nasm.exe -f bin ExtendedProgram.asm" -o ExtendedProgram.bin"

copy /b bootloader.bin+ExtendedProgram.bin bootloader.flp

goto boot

:boot
bochsrc.bxrc

goto kill

:kill
del "bootloader.flp"