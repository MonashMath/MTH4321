# Computational finite element tutorials

These tutorials are delivered by [@santiagobadia](https://github.com/santiagobadia).

In this set of tutorials, we will use the [`Gridap`](https://github.com/gridap/Gridap.jl) software library developed by [@santiagobadia](https://github.com/santiagobadia) and co-workers. This library provides tools for the numerical approximation of partial differential equations using mesh-based techniques (finite element methods in general). The library is written in [`Julia`](https://julialang.org), a somehow recent programming language that combines the expressiveness of dynamic languages like `Python` and the performance of static languages like `C++` or `FORTRAN`.

It is not the aim of this course to teach `Julia`, and you are not going to be asked to implement advanced algorithms. What will be presented can be understood without a primer in `Julia`. It is more about understanding the steps in a finite element software (mesh generation, creation of finite element spaces, bilinear forms, linear system and solver), and to be able to justify the results obtained using what we have learned from their mathematical analysis.

On the other hand, to simplify things for you, I have created a set of interactive Jupyter notebooks and an executable environment on the cloud. The only thing that you need is to click on the `binder` badges  below to launch the tutorials on your browser. This way you do not have to install _anything_ locally on your computer. In any case, be patient, the launch of the tutorials _can take a considerable amount of time_ the first time.

Once launched, you can just run all cells and see the results obtained. Then you can go cell by cell and run them if you want. Positioned at a code cell, just press `Ctrl+Enter`. You can change things in the cells and re-run them.

In any case, if you want to install Julia locally, and you want to go further into these concepts, just let me know. I can help you.

## Tutorial 1

The first tutorial is a driver for the approximation of the simplest possible finite element problem using `Gridap`. We will solve the Poisson problem in 1D. You can find it here:

[![Binder](https://mybinder.org/badge_logo.svg)](https://mybinder.org/v2/gh/MonashMath/MTH4321/master?filepath=Tutorials.jl%2Fnotebooks%2Ft001_poisson.ipynb)

## Tutorial 2

In the second tutorial, we will consider different methods of manufactured solutions, and carry out h and p-refinement convergence studies for different problems. We will plot the results and analyse them. 

[![Binder](https://mybinder.org/badge_logo.svg)](https://mybinder.org/v2/gh/MonashMath/MTH4321/master?filepath=Tutorials.jl%2Fnotebooks%2Ft002_convergence.ipynb)


# How to run the notebooks locally

I have created the cloud version of the tutorials to simplify things, so **you are not forced to do the following part**. However, to install all the tools that are needed for running these notebooks locally is pretty simple. The first thing that you have to do is to download `Julia` from [here](https://julialang.org/downloads/). Pick the one for your operating system. I would recommend you to install the newest stable release.

If you install `Julia` in `Linux`, you will need to add the folder with the `Julia` executable to the environment variable `PATH` in your `.bashrc`:
```
export PATH="$HOME/opt/julia-0.5.0/bin:$HOME/.local/bin:$PATH"
```

Next, assuming that you know about `git` and it is installed in your computer, you can clone the repository. You can have the following [basic `git` tutorial](https://github.com/MonashMath/SCI1022/blob/master/Git.md) we have created for SCI1022 Monash unit. In any case, if that is too much, you can simply download a `zip` file with this repos clicking on the `Clone or download` buttom on the top-right part of this window.
```
$ git clone https://github.com/gridap/Tutorials.git
```

Move into the folder and open a Julia REPL setting the current folder as the project environment. 
```
$ cd Tutorials
$ julia --project=.
               _
   _       _ _(_)_     |  Documentation: https://docs.julialang.org
  (_)     | (_) (_)    |
   _ _   _| |_  __ _   |  Type "?" for help, "]?" for Pkg help.
  | | | | | | |/ _` |  |
  | | |_| | | | (_| |  |  Version 1.1.0 (2019-01-21)
 _/ |\__'_|_|_|\__'_|  |  Official https://julialang.org/ release
|__/                   |

julia> 

```

Instantiate the environment. This will automatically download all required packages.
```
# Type ] to enter in pkg mode
(Tutorials) pkg> instantiate
```

Build the notebooks
```
# Type Ctrl+C to get back to command mode
julia> include("deps/build.jl")
```

Open the notebooks
```
julia> using IJulia
julia> notebook(dir=pwd())
```
This will open a browser window. Navigate to the `notebooks` folder and open the tutorial you want. Enjoy!
