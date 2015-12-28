# nonomon
A rather poor imitation of Nodemon written in shell script

[Nodemon](https://github.com/remy/nodemon) is an indispensable part of my Vim based development toolbox.

I've recently run into some issues getting Nodemon to pick up file changes when working on my C projects. So, I decided this would be a good excuse to learn some basic shell scripting.

Nonomon is currently very rough and only tested on Arch Linux, but I plan on polishing it up as free time allows. 

## Install

```shell
sudo make install
```

## Uninstall

```shell
sudo make uninstall
```

For now:

```shell
nonomon "command to execute" <file glob>
```

For example, this command will compile and then execute any file in the current folder with a c extension:

```shell
nonomon 'gcc -g $file -o $file_without_extension.o && ./$file_without_extension.o' *.c
```
