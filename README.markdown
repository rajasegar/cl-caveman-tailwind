# cl-caveman-tailwind

Common Lisp web application boilerplate using [Caveman](https://github.com/fukamachi/caveman) and [Tailwind CSS](https://tailwindcss.com)

## Pre-requisites
You need [Node.js](https://nodejs.org) installed in your machine, since the build scripts for Tailwind CSS require the `npx` program.

## Usage
```lisp
(ql:quickload :cl-caveman-tailwind)
(cl-caveman-tailwind:start :port 3000)
```

## Installation
You can clone the repo 
```
git clone https://github.com/rajasegar/cl-caveman-tailwind
```

Or, you can use something like [degit](https://github.com/Rich-Harris/degit)
```
degit rajasegar/cl-caveman-tailwind#main
```
degit makes copies of git repositories. When you run degit, it will find the latest commit and download the associated tar file. (This is much quicker than using git clone, because you're not downloading the entire git history.)

**NOTE:** Please ensure you change the name of the system definitions, packages and other relevant places by replacing the default name `cl-caveman-tailwind`.

## Building CSS
There is a script file `build-css.sh` for building dev and prod environment CSS assets.

For development environment
```
./build-css.sh
```

For production environment, you need to pass in the `--prod` flag
```
./build-css.sh --prod
```

## Adding custom css
Since you are using Tailwind CSS you most probably don't need any custom css, because Tailwind has got a ton of utility classes
you can directly use. But if you feel the need to add custom css, just append them to the file `src/tailwind.css`.

The build scripts will take this file, compile and produce the output css into `static/css/main.css`.


## Author

* Rajasegar Chandran

## Copyright

Copyright (c) 2021 Rajasegar Chandran

