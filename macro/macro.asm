section .data
  digit db 0, 10

section .text
  global _start

; Note : a macro is like a function in high-level programming languages (e.g. : Python, Javascript)

; == a 'printDigit' macro
%macro printDigit 1   ; <- 'printDigit' is the name of macro. While '1' beside 'printDigit' is the number of arguments that will be passed to the macro.
  mov rax, %1         ; <- '%1' will be replaced by an argument
  call _printDigit
%endmacro

; == an 'exit' macro
%macro exit 0
  mov rax, 60
  mov rdi, 0
  syscall
%endmacro

_start:
  printDigit 3      ; <- This will print      ; <- This will print '3' '3'
  printDigit 4      ; <- This will print '4'

  exit

_printDigit:
  add rax, 48
  mov [digit], al
  mov rax, 1
  mov rdi, 1
  mov rsi, digit
  mov rdx, 2
  syscall
  ret
