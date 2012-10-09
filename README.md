# node-cross-compiler

This project aims to simplify the process of cross-compiling node.js on
smartphone and robotics plattforms.

My main target plattform is the Parrot AR Drone 2.0, but I will merge pull
requests for any other plattforms as well.

## Requirements

You will need to install [vagrant](http://vagrantup.com/) as the cross
compiling is done inside of a virtual machine.

## Cross compiling

Cross compiling node.js for the `ardrone2` is as easy as running:

```bash
$ git clone git://github.com/felixge/node-cross-compiler.git
$ cd node-cross-compiler
$ vagrant up
$ vagrant ssh
$ cd cross-compiler
$ ./setup-vm.sh
$ make ardrone2
```

This will fire up a new vagrant machine, ssh into it, and build node.js to run
on the ardrone2. You will find the resulting binary in `build/bin/node`.

## Contributing

If you want to contribute support for another plattform, we probably need a
`common.sh` file for shared environment variables. Other than that it should
be as simple as adding it to the `plattforms` folder and `Makefile`.
