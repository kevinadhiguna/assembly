; Nama							:	Kevin Akbar Adhiguna
; NPM								:	140810170055
; Kelas							:	B
; Tanggal						:	27 April 2021
; Deskripsi Program	:	Mencetak huruf kapital Z-A

org 0x100				; Memberitahu program dimana program ini akan disimpan pada memory (RAM).
								; org merupakan singkatan dari origin.

section .text		; .text merupakan section yang berisi program utama. Ini seperti fungsi main() pada C++.

start:
	mov ah, 2h		; Mencetak karakter ke STDOUT dengan menyimpan nilai hexadecimal 2 pada register AH.
	mov dl, 5Ah		; Menyimpan nilai hexadecimal 5A milik huruf kapital Z ke register DL.
	mov cx, 26		; Menentukan jumlah looping, yaitu sebanyak 26 kali karena huruf alphabet ada 26.
								;	Kemudian nilai 26 tersebut disimpan dalam register CX.

Print:
	int 21h				; Memanggil interrupt 0x21 yang merupakan DOS function dispatcher. 
	dec dl				; Mengurangi nilai hexadecimal sebanyak 1 pada register DL.
								; Nilai pada register DL yang semula 26 mencetak huruf kapital Z, akan menjadi 25 lalu mencetak huruf kapital Y, 
								;		dan seterusnya.
	loop Print		; Melakukan looping dengan mengeksekusi blok Print sebanyak 26 kali.
	int 20h				; Merupakan exit program system call untuk menghentikan eksekusi program.
