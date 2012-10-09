# node-cross-compiler

This project aims to simplify the process of cross-compiling node.js on
smartphone and robotics plattforms.

My main target plattform is the Parrot AR Drone 2.0, but I will merge pull
requests for any other plattforms as well.

## Requirements

You will need to install [vagrant](http://vagrantup.com/) as the cross
compiling is done inside of a virtual machine.

## Cross compiling

Cross compiling node.js for a given plattform is as easy as running:

<!-- add git clone url -->

```
$ git clone ...
$ cd node-cross-compiler
$ vagrant up
$ vagrant ssh
$ make ardrone2
```

This will fire up a new vagrant machine, ssh into it, and build node.js to run
on the ardrone2. You will find the resulting binary in `build/ardrone2/node`.
