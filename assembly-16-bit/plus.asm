org 0x100

global start

section .data

        msg1        db "input 1 : $"            ; String untuk input angka ke-1 user
        msg2        db "input 2 : $"            ; String untuk input angka ke-2 user
        msg3        db "hasil penjumlahan : $"  ; String untuk hasil penjumlahan

section .text

start:
        mov     ah, 09h         ; Mencetak String ke STDOUT (Write string to STDOUT)
        mov     dx, msg1        ; Assign variabel msg1 ke register dx agar ditampilkan
        int     21h             ; Interrupt untuk menjalankan code di atasnya
        
        mov     ah, 01h         ; Membaca karakter input user (Read character from STDIN)
        int     21h             ; Interrupt untuk menjalankan code di atasnya
        sub     al, "0"         ; Mengurangi register al dengan simbol 0
        mov     bl, al          ; Memindahkan nilai pada register al ke register bl
        int     21h             ; Interrupt untuk menjalankan code di atasnya
        sub     al, "0"         ; Mengurangi register al dengan simbol 0
        xchg    al, bl          ; Menukar nilai register al dengan nilai register bl (xchg = eXCHanGe)
        mov     ah, 10          ; Assign angka 10 pada register ah
        mul     ah              ; Operasi perkalian pada register ah
        add     al, bl          ; Menambahkan nilai register bl dengan nilai register al
        push    ax              ; Menyimpan nilai ax pada stack
                    
        mov     ah, 0eh         ; Memilih default drive (Select default drive)
        mov     al, 13          ; Assign 13 pada register al
        int     10h             ; Interrupt untuk screen manipulation
        mov     al, 10          ; Assign 10 pada register al
        int     10h             ; Interrupt untuk screen manipulation
        
        mov     ah, 09h         ; Mencetak String ke STDOUT (Write string to STDOUT)
        mov     dx, msg2        ; Assign variabel msg2 ke register dx agar ditampilkan
        int     21h             ; Interrupt untuk menjalankan code di atasnya
            
        mov     ah, 01h         ; Membaca karakter input user (Read character from STDIN)
        int     21h             ; Interrupt untuk menjalankan code di atasnya
        sub     al, "0"         ; Mengurangi register al dengan simbol 0
        mov     bl, al          ; Memindahkan nilai pada register al ke register bl
        int     21h             ; Interrupt untuk menjalankan code di atasnya
        sub     al, "0"         ; Mengurangi register al dengan simbol 0
        xchg    al, bl          ; Menukar nilai register al dengan nilai register bl (xchg = eXCHanGe)
        mov     ah, 10          ; Assign 10 pada register ah
        mul     ah              ; Operasi perkalian pada register ah
        add     al, bl          ; Menjumlahkan nilai pada register bl ke register al
        mov     bl, al          ; Memindahkan nilai pada register al ke register bl
        push    bx              ; Menyimpan nilai bx pada stack
        
        pop     bx              ; Mengambil nilai terakhir pada register bx
        pop     ax              ; Mengambil nilai terakhir pada register ax
        
        add     ax, bx          ; Menjumlahkan nilai pada register bx ke register ax
        push    ax              ; Menyimpan nilai ax pada stack
        
        mov     ah, 0eh         ; Memilih default drive (Select default drive)
        mov     al, 13          ; Assign 13 pada register al
        int     10h             ; Interrupt untuk screen manipulation
        mov     al, 10          ; Assign 10 pada register al
        int     10h             ; Interrupt untuk screen manipulation
        
        mov     ah, 09h         ; Mencetak String ke STDOUT (Write string to STDOUT)
        mov     dx, msg3        ; Assign variabel msg3 ke register dx agar ditampilkan
        int     21h             ; Interrupt untuk menjalankan code di atasnya
        
        pop     ax              ; Mengambil nilai terakhir pada register ax
        
        mov     bx, 10          ; Assign 10 pada register bx
        xor     cx, cx          ; Mengosongkan register cx
divisor:
        xor     dx, dx          ; Mengosongkan register dx
        div     bx              ; Operasi pembagian pada register bx
        push    dx              ; Menyimpan nilai dx pada stack
        inc     cx              ; Increment nilai pada register cx
        cmp     ax, 0           ; Berhenti jika register ax bernilai 0
        jnz     divisor         ; Jika belum bernilai 0, maka akan dijalankan blok divisor lagi
cetak_angka:
        pop     dx              ; Mengambil nilai terakhir pada register dx
        add     dl, "0"         ; Menambahkan simbol 0 ke register dl
        mov     ah, 02h         ; Mencetak karakter (Write character to STDOUT)
        int     21h             ; Interrupt untuk menjalankan code di atasnya
        loop    cetak_angka     ; Looping pada block cetak angka
        
        mov     ax, 4c00h       ; Memindahkan angka hexadecimal 4C00 (decimal 19456) ke register ax
        int     21h             ; Interrupt untuk menjalankan code di atasnya