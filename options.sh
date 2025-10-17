#!/bin/bash

# Define the number of processes used to compilie.
# By default half of the available cpu threads are used.
THREADS=$(($(nproc)/2)) 

# === Package selection ===:
# Solver
MUMPS="ON"
SUITESPARSE="OFF"
SUPERLU_DIST="ON"

# Algebra Packages
PETSC="ON"
TRILINOS="ON"

# Tools
NUMDIFF="ON"

##################################################################
#                      Advanced Options                          #
##################################################################

# Selecht which BLAS backend to use. 
# Available options: SYSTEM, FLAME, AMD, MKL
BLAS_STACK="SYSTEM"

# You can redefine this variable to specify a custom Git URL for . 
# You can use this to point to a different repository or a specific 
# fork of deal.II.
DEALII_URL="https://github.com/kinnewig/dealii.git"

# Specify the branch/tag to use
DEALII_TAG="add_frosch"

# You can redefine this variable to specify a custom Git URL for . 
# You can use this to point to a different repository or a specific 
# fork of Trilinos.
TRILINOS_URL="https://github.com/kinnewig/Trilinos.git"

# Specify the branch/tag to use
TRILINOS_TAG="OptimizedSchwarz-16.1.0"
