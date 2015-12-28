# nonomon
A rather poor imitation of Nodemon written in shell script

[Nodemon](https://github.com/remy/nodemon) is an indispensable part of my Vim based development toolbox. Nodemon watches a set of files for changes and executes the command you specify when any of those files changes.

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

## Usage

Provide a command to be executed when a file changes and the file glob that points to the file or files to watch. If you want to customize the command using the name of the file that has changed, the environment variables file and file_without_extension are defined before your command is executed.

```shell
nonomon 'command to execute' <file glob>
```

For example, this command will compile and then execute any file in the current folder with a c extension:

```shell
nonomon 'gcc -g $file -o $file_without_extension.o && ./$file_without_extension.o' *.c
```

Note that the command includes usage of both shell variables. Also note that the command is surrounded by single quotes so that the shell variables aren't expanded before nonomon accesses them.
