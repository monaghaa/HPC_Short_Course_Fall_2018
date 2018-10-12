#!/bin/bash

#SBATCH --nodes=1
#SBATCH --ntasks=2
#SBATCH --time=00:02:00
#SBATCH --qos=testing
#SBATCH --partition=shas-testing
#SBATCH --output=loadbalance_%j.out
#SBATCH --reservation=tutorial1  

# Written by:    Andrew Monaghan, 08 March 2018
# Purpose:     To demonstrate how to submit several jobs using the loadbalance tool

module purge
 
module load intel
module load impi
module load python/2.7.11
module load loadbalance

mpirun lb cmd_file
