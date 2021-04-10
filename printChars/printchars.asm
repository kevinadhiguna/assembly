section .data
  text  db  "Welcome to Assembly!", 10 ; <- 'db' means define bytes, to create a data, in this case, it is a sentence/string. '10' means brakline or '\n'.

section .text
  global _start

_start:
  mov rax, 1
  mov rdi, 1
  mov rsi, text
  mov rdx, 21   ; <- '21' is the max characters you can print out in this program. If you notice, 'Welcome to Assembly!' consists of 20 characters. Therefore, it must not be less than 21. (if you put '20', the output is 'Welcome to Assembly!%').
  syscall

  mov rax, 60
  mov rdi, 0
  syscall
