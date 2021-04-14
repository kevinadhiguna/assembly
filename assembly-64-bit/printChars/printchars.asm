section .data
  text  db  "Welcome to Assembly!", 10 ; <- 'db' means define bytes, to create a data, in this case, it is a sentence/string. '10' means brakline or '\n'. 'text' in this line acts as a memory address.

section .text
  global _start   ; <- 'global' is used when you want the linker to be able to know the address of a label. In this program, the label is '_start'.

; The '_start' label is vital for all programs. Your OS will first look at the '_start' label to try executing an assembly program.
_start:
  ; Below is 'sys_write' section
  mov rax, 1    ; <- 'sys_write' has an ID of 1. It comes like that by default.
  mov rdi, 1    ; <- '1' is Standard Output. '0' is Standard Input. '2' is Standard Error.
  mov rsi, text ; <- Actually this is the location of string to write (Buffer). The location of the string, or memory, in this program, is 'text' (described above).
  mov rdx, 21   ; <- '21' is the max characters you can print out in this program. If you notice, 'Welcome to Assembly!' consists of 20 characters. Therefore, it must not be less than 21. (if you put '20', the output is 'Welcome to Assembly!%').
  syscall       ; <- A program requests a service from the kernel with syscall (system call).

  ; Below is 'sys_exit' section
  mov rax, 60    ; <- 'sys_exit' has an ID of 60. It comes like that by default.
  mov rdi, 0     ; <- '0' means/assumes there is no error. Actually '0' is an #errorcode.
  syscall

; == Additional Notes ==
; - All x86_64 assembly files have three sections : (i) ".data" section, (ii) ".bss" section, (iii) ".text" section.
; (i)   ".data" section: a section where all data is defined before compilation.
; (ii)  ".bss" section: a section where data is allocated for future use.
; (iii) ".text" section : a section where actual code of the program.
