#!/bin/bash

nstates=$1

while read line cstep; do
    grep -A$line -A $nstates -m 1 'Frequencies (eV) and Total Molecular Dipole Moments (Debye)' md.out >> permdipole.out
done < dipline.out
