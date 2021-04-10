section .data
  ask db "What's your name ? "   ; <- the first text that will be printed as a question.
  greet db "Hello, "              ; <- a text that will be displayed after one inputs its name. 

; '.bss' section is used to reserve data
section .bss
  name resb 16    ; <- 'name' is the label to access the reserved data. 'resb' stands for reserve bytes. '16' is the max characters of data that can be reserved.

section .text
  global _start

_start:
  call _questionText
  call _getName
  call _printGreeting
  call _printName

  mov rax, 60
  mov rdi, 0
  syscall

_questionText:
  mov rax, 1
  mov rdi, 1
  mov rsi, ask
  mov rdx, 19
  syscall
  ret

_getName:
  mov rax, 0    ; <- This is the ID number of subroutine. Use '0' to get a user input.
  mov rdi, 0    ; <- '0' for Standard Input so one can input its name
  mov rsi, name ; <- Store user input (name) to the 'name' label in the '.bss' section
  mov rdx, 16   ; <- The max character one can input. 16, as we have set above in this program.
  syscall
  ret

_printGreeting:
  mov rax, 1
  mov rdi, 1
  mov rsi, greet
  mov rdx, 7
  syscall
  ret

_printName:
  mov rax, 1
  mov rdi, 1
  mov rsi, name   ; <- Display user's name
  mov rdx, 16     ; <- Print the max length that we have set in this program above
  syscall
  ret
