# ASSIGNMENT

# Task 1: As you can see, we did not integrate the forcing term, because we knew it was zero. Consider now `u = x[1]^2` as analytical solution in the previous code (in this case, `f` above will not be zero anymore).

# Write the code that integrates the forcing term usign all the ingredients above. First, compute the local contributions to the rhs and next assemble them to the global rhs.

# What error are you getting? Is that reasonable? Can you change the order of the FE space (and quadrature degree) to obtain a zero (up to machine precision) error?

# Are you integrating exactly all the terms in the RHS? And the L2 error of the norm?

# Task 2. Write the code that computes the H1 seminorm error of the solution. You have at your disposal `∇u`.

# Can you create a function using ALL the code above that is parameterised with respect to the number of partitions per direction `n`. With this function, can you take the solution `u = x[1]^2` and linear elements and do a convergence plot. In the x axis compute log(h) (where h is the mesh size) and in the y axis compute the log(error) in L2 and H1 norm. Are the results as expected?

# function compute_fem_problem(n)
     # Here the code, eliminating n = 4 line, we want to use the one provided
     # ...
     # return e_L2, e_H1
# end
