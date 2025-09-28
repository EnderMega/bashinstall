# bashinstall
This is mostly a script to configure and install everything I use on my computer with just one script. It also has another script to make a copy of the desired configs.  
Everything that is a .md file is just explanations, TODOs, etc. The .txt files are what are uses for the bashinstall.

## Usage
You first need to `chmod +x copconfig instalar` to make both of them executable.  
Since this caries my own config you could just run this on a fresh/your system with `./instalar`.  
If you want to copy your configs you just need to modify `programas.txt`, with the **name of the programs** you would install with `apt`, and `dirconfigs.txt`, with the **name of the folders** in `.config` you want to copy. If you use ppa(s) you will need to add the `sudo add-apt-repository -y ppa:~` near the other ppa(s) inside `instalar`. After that just run `./copconfig` on the system with the configs you wish to copy and now you are ready to use `./instalar` on the system you wish to install these configs. If you don't pass the 'b' (simultaneous backup) argument, inside the 'backup' folder there will still be my config files, they wont be installed when you run `./instalar`, they are just a safety for `./copconfig`.  

## Features
- [x] Modularity for adding programs for instalation (add in plain text)
- [x] Modularity for copying .config folders (add in plain text)
- [x] Works with ppa(s) ... ok, that's kinda cheating kkk
- [x] Easy way to copy configs
- [x] No need to install anything, this is just a bash script

## TODO
- [ ] More argument options
