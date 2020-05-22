# Computational finite element tutorials

[![Stable](https://img.shields.io/badge/docs-stable-blue.svg)](https://monashmath.github.io/MTH4321/Tutorials.jl/stable)
[![Dev](https://img.shields.io/badge/docs-dev-blue.svg)](https://monashmath.github.io/MTH4321/Tutorials.jl/dev)
[![Build Status](https://travis-ci.com/monashmath/MTH4321/Tutorials.jl.svg?branch=master)](https://travis-ci.com/monashmath/MTH4321/Tutorials.jl)
[![Codecov](https://codecov.io/gh/monashmath/MTH4321/Tutorials.jl/branch/master/graph/badge.svg)](https://codecov.io/gh/monashmath/MTH4321/Tutorials.jl)
[![Coveralls](https://coveralls.io/repos/github/monashmath/MTH4321/Tutorials.jl/badge.svg?branch=master)](https://coveralls.io/github/monashmath/MTH4321/Tutorials.jl?branch=master)

These tutorials are delivered by [@santiagobadia](https://github.com/santiagobadia).

In this set of tutorials, we will use the [`Gridap`](https://github.com/gridap/Gridap.jl) software library developed by @santiagobadia and co-workers. This library provides tools for the numerical approximation of partial differential equations using mesh-based techniques (finite element methods in general). The library is written in [`Julia`](https://julialang.org), a somehow recent programming language that combines the expressiveness of dynamic languages like `Python` and the performance of static languages like `C++` or `FORTRAN`.

It is not the aim of this course to teach `Julia`, and you are not going to be asked to implement advanced algorithms. What will be presented can be understood without a primer on `Julia`. It is more about understanding the steps in a finite element software (mesh generation, creation of finite element spaces, bilinear forms, linear system and solver).

On the other hand, to simplify things for you, I have created a set of interactive Jupyter notebooks and an executable environment on the cloud. The only thing that you need is to click on the `binder` badges  below to launch the tutorials on your browser. This way you do not have to install _anything_ locally on your computer. In any case, be patient, the launch of the tutorials _can take a considerable amount of time_ the first time.

Once launched, you can just run all cells and see the results obtained. Then you can go cell by cell and run them if you want. Positioned at a code cell, just press `Ctrl+Enter`. You can change things in the cells and re-run them.

In any case, if you want to install Julia locally, and you want to go further into these concepts, just let me know. I can help you.

# Tutorial 1

The first tutorial is a driver for the approximation of the simplest possible finite element problem using `Gridap`. We will solve the Poisson problem in 1D. You can find it here:

[![Binder](https://mybinder.org/badge_logo.svg)](https://mybinder.org/v2/gh/MonashMath/MTH4321/master?filepath=Tutorials.jl%2Fnotebooks%2Ft001_poisson.ipynb)

# Tutorial 2

In the second tutorial, we will consider different methods of manufactured solutions, and carry out h and p-refinement convergence studies for different problems. We will plot the results and analyse them. 

[![Binder](https://mybinder.org/badge_logo.svg)](https://mybinder.org/v2/gh/MonashMath/MTH4321/master?filepath=Tutorials.jl%2Fnotebooks%2Ft002_convergence.ipynb)
