# nonomon
A rather poor imitation of Nodemon written in shell script

[Nodemon](https://github.com/remy/nodemon) is an indispensable part of my Vim based development toolbox.

I've recently run into some issues getting Nodemon to pick up file changes when working on my C projects. So, I decided this would be a good excuse to learn some basic shell scripting.

Nonomon is currently very rough, but I plan on polishing it up and creating an installation process. 

For now:

```shell
./nonomon "command to execute" <file glob>
```

For example:

```shell
./nonomon "cc -g " *.c
```
