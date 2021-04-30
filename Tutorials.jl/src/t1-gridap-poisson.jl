# We are going to use an advanced finite element code to observe how spectral
# Galerkin and finite element methods work in practise. Due to the limited time we
# have in this course, I have decided to use the software implementation in `Gridap`,
# which I co-develop. This software is written in `Julia`. If you do not know about `Julia`,
# no worries. You won't need much for following the tutorials.
#
# The code we will use is Gridap, which we load as follows.

using Gridap

# We will also use Plots for plotting results.

using Plots

# Now, we start defining our problem and its approximation.
# The corners of the box, in 1D, end-points, of the mesh define the domain.
# We consider $\Omega \doteq [0.0,1.0]$.

domain = (0.0,1.0)

# Now, we the number of cells in our mesh. We define a 1D partition.

N = 8
partition = (N,)

# The next function creates a structured uniform mesh of n-cubes in dimension n.
# In 1D, it is just the mesh of [0,1] with N segments.

model = CartesianDiscreteModel(domain,partition)

# The model includes geometrical information. We can extract a
# triangulation (mesh) out of it.

trian = get_triangulation(model)

# Now, we can pick the order of the finite element space

order = 3

# Here we choose the degree of the quadrature and compute it. With this we can create a "numerical" measure for integration purposes (which includes the quadrature).

degree = (order-1)*2
dΩ = Measure(trian,degree)

# Let us consider a problem with analytical solution in strong sense.
# $x$ is a point in the space. In 1D, do not forget to take its 1st component, `x[1]`.

u(x) = x[1]^2 - 2x[1] + 1

# We want $u(x)$ to be solution of the Poisson problem. Thus, the forcing term must
# be (for the Poisson equation):

f(x) = - Δ(u)(x)

# Now we create a Lagrangian reference finite element. `Float64` means that our unknowns is scalar. finite element space for all the information above.
# With this reference finite element, we can create the global finite element space. `boundary` means that we consider Dirichlet data on the whole boundary, i.e., `conformity` being `H1`, since we want to use a continuous space.

reffe = ReferenceFE(lagrangian,Float64,order)
V = TestFESpace(
   model,reffe;
   conformity=:H1,
   dirichlet_tags="boundary")

# The trial space is an affine space with boundary conditions. The next
# method evaluates u at the end-points and consider these values as Dirichlet values.

U = TrialFESpace(V,u)

# Now the (bi)linear form. For the Poisson equation we have reads:

a(u,v) = ∫( ∇(v)⋅∇(u) )*dΩ
l(v) = ∫( v*f )*dΩ

# With these terms, we can now create our operator.
# E.g., F(x) = Ax-b, where A is our matrix and b the right-hand side,
# thus affine. It takes the term and the trial/test finite element spaces.

op = AffineFEOperator(a,l,U,V)

# Now, we solve the linear system and get the finite element solution.

uh = solve(op)

# Now, let us check the error. We define the h1 semi-norm (squared)

l2(w) = inner(w,w)
sh1(w) = a(w,w)
h1(w) = sh1(w) + l2(w)

# The error function is

e = u - uh

# Now we integrate the value of the square of the norm at each cell and
# add together for all cells and take the squared root. We can compute the
# $L^2(\Omega)$ norm.

el2 = sqrt(sum( ∫( e*e )*dΩ ))

# We can also compute the $H^1(\Omega)$.

eh1 = sqrt(sum( ∫( e*e + ∇(e)⋅∇(e) )*dΩ ))

# You can play with this tutorial, changing the order, the analytical solution, etc.
