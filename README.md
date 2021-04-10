# Assembly

A collection of Assembly codes ⚙️

## How to Run Assembly :
1. Open terminal
2. Install `nasm`, general-purpose x86 assembler, with `sudo apt install nasm`
3. Create a new assmbly program : `nano <your_assembly_code_filename>.asm` (for instance, `nano helloworld.asm`).
4. Assemble the program : `nasm -f elf64 <your_assembly_code_filename>.asm` (such as `nasm -f elf64 helloworld.asm`) 
5. Link the object file nasm produced into an executable file : `ld -s -o <your_assembly_code_filename> <output_filename>.o` (for example, `ld -s -o helloworld helloworld.o`)
6. Now, your assembly program is an executable file. Run it with : `./<your_assembly_code_filename>` (like `./helloworld`)
7. See the output of your Assembly program, congrats!

### Example :<br>
<img src="https://i.ibb.co/SsZMSBr/how-to-run-assembly.png" />

## References :
- [How can I compile & run assembly in Ubuntu 18.04? - Stackoverflow](https://askubuntu.com/questions/1064619/how-can-i-compile-run-assembly-in-ubuntu-18-04)
