# node-cross-compiler

This project aims to simplify the process of cross-compiling node.js on
smartphone and robotics platforms.

My main target platform is the Parrot AR Drone 2.0, but I will merge pull
requests for any other platforms as well.

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

## Platforms

### ardrone2

Helpers have been added for installing node on the ardrone. Simply running ```./helpers/ardrone2.sh``` will build and install node on your drone.

## Contributing

If you want to contribute support for another platform, we probably need a
`common.sh` file for shared environment variables. Other than that it should
be as simple as adding it to the `platforms` folder and `Makefile`.
