# Little Server

This project is a small example on how to use jpm to build
a standalone executable that depends on third-party modules.
It's really simple (if everything works), but a lot goes on
under the hood so this is very much a WIP feature.

## Prerequisites

First, make sure you have the latest [Janet](https://janet-lang.org) from git installed --
it should be at least version 1.2.0-dev-<something>. Any version after this should also work.
You will also need a C compiler on your path, which means on windows cmd.exe, you should be
in a developer command prompt or have run vcvars64.bat. You will also need git installed and
on your path to download dependencies (this includes windows! Git Bash should work).

## Dependencies

First, we need to install all of the projects Janet and C dependencies.
Go into the source directory and run

```sh
sudo jpm deps
```

(using sudo as needed - this installs dependencies into the `(dyn :syspath)`). This
should use git to download [circlet](https://github.com/janet-lang/circlet), then build
and install the module files. This installs both `circlet.so`, which is the native module
that is loaded when you run `(import circlet)`, as well as `circlet.a`, which is what will
be linked into the final executable.

## Building

Once dependencies have been installed, we need to build the executable. This
should be fairly quick.

```sh
jpm build
```

(No sudo is needed here). This should output an executable file in
`build/lserve` (`build/lserve.exe` on windows).

## Running

To test that everything worked correctly, try running the server with

```sh
build/lserve
```
