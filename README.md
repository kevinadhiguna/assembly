# Assembly

A collection of Assembly codes ⚙️

## How to Run Assembly (16 bit with DOSBox in Linux) - 1 :
1. Download [dos.zip](https://drive.google.com/file/d/1MoeJyAe13s28rdD8PHy8fXEqFd2udhZQ/view).

2. Extract dos.zip to `~` (`home/<username>`) directory. As a result it will look like this : `/home/<username>/dos`.

3. Open the extracted folder and open `dosbox-0.74-3.conf` file.

4. Copy entire text in `dosbox-0.74-3.conf` file.

5. Open `~/.dosbox` directory and open `dosbox-0.74-3.conf` file inside the `~/.dosbox` file. It is not mandatory but recommended to create a backup file of the original `dosbox-0.74-3.conf` file with `cp ~/.dosbox/dosbox-0.74-3.conf ~/.dosbox/dosbox-0.74-3.conf.bak`. However if you do so, please copy again the entire text of `dosbox-0.74-3.conf` inside the extracted dos.zip folder.

6. Paste the copied text to `~/.dosbox/dosbox-0.74-3.conf`.

7. Open terminal and run `dosbox`.

## How to Run Assembly (16 bit with DOSBox in Linux) - 2 (alternative) :
1. Open terminal.

2. Install DOSBox with `sudo apt update && sudo apt install dosbox`.

3. [Download the latest version of nasm (netwide assembler)](https://www.nasm.us/pub/nasm/releasebuilds/?C=M;O=D). By the time this README.md is edited, the latest version of nasm is 2.15.05. So, this guide will use nasm version 2.15.05. Click the `2.15.05` folder. <br>
<img src="https://i.ibb.co/kXT68Ys/install-nasm.png" /><br>

4. Click the `dos` directory. <br>
<img src="https://i.ibb.co/7y67qxq/install-nasm-2.png" /><br>

6. Download the `.zip` file. <br>
<img src="https://i.ibb.co/zfzNprg/install-nasm-3.png" /><br>

7. Go to the directory where it is downloaded. Then extract the `.zip` file with `unzip {FILENAME}.zip`, such as `unzip nasm-2.15.05-dos.zip`. <br>
<img src="https://i.ibb.co/sKmgnfK/install-nasm-4.png" /><br>

**Note** : It is recommended to put extracted nasm folder to home directory so the path will be like `~/nasm-2.15.05-dos`. This will make mounting in DOSBox easier as the path to directory is short.

8. Back to the terminal. Run `dosbox` to open DOSBox. <br>
<img src="https://i.ibb.co/7RJQPHW/run-nasm-assembly-0.png" /><br>

9. In the DOSBox, run `mount c {NASM_FOLDER_PATH}`. For example, if you put `nasm` folder at the home directory, run `mount c ~/nasm-2.15.05-dos`. <br>
<img src="https://i.ibb.co/T8FZ93c/run-assembly-1.png" /><br>

10. Put your Assembly program inside the `nasm-2.15.05-dos` directory. Therefore, if you list available files and folders, it will display like this : <br>
<img src="https://i.ibb.co/zZVz5NY/run-assembly-2.png" /><br>

11. Compile your Assembly program with `nasm -f bin -o {FILENAME}.com {FILENAME}.asm` like `nasm -f bin -o hello.com hello.asm` to create an executable file.

12. Run the executable file, with `{FILENAME}.com` such as `hello.com`. <br>
<img src="https://i.ibb.co/tPC6XwW/run-assembly-3.png" /><br>

## How to Run Assembly (x86_64 / 64-bit Linux) :
1. Open terminal
2. Install `nasm`, general-purpose x86 assembler, with `sudo apt update && sudo apt install nasm`.
3. Create a new assmbly program : `nano <your_assembly_code_filename>.asm`. <br>(for instance, `nano helloworld.asm`)
4. Assemble the program : `nasm -f elf64 <your_assembly_code_filename>.asm`. <br>(such as `nasm -f elf64 helloworld.asm`)
5. Link the object file nasm produced into an executable file : `ld -s -o <your_assembly_code_filename> <output_filename>.o`. <br>(for example, `ld -s -o helloworld helloworld.o`)
6. Now, your assembly program is an executable file. Run it with : `./<your_assembly_code_filename>` <br>(like `./helloworld`)
7. See the output of your Assembly program, congrats!

### Example :<br>
<img src="https://i.ibb.co/SsZMSBr/how-to-run-assembly.png" />

## References :
- [Tutorial: How to run 16-bits NASM on Linux](https://forum.nasm.us/index.php?topic=1297.0)
- [How can I compile & run assembly in Ubuntu 18.04? - Stackoverflow](https://askubuntu.com/questions/1064619/how-can-i-compile-run-assembly-in-ubuntu-18-04)

[![Visits Badge](https://badges.pufler.dev/visits/kevinadhiguna/assembly)](https://github.com/kevinadhiguna)
