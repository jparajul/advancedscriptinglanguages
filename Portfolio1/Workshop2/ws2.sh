#!/bin/bash
#CSG6206 – Advanced Scripting
#Workshop 2 – System Information and String Formatting
#Jeewan Parajuli(10436478)

dashBorder1=$(printf -- '-%.0s' {0..24})
echo "${dashBorder1// /-} System Report ${dashBorder1// /-}" >>output.txt

printf "Date: $(date +%d/%m/%y)Time: $(date +%T)%20sHost Name $(hostname)\n" >>output.txt


dashBorder2=$(printf -- '-%.0s' {0..64})
echo "${dashBorder2// /-}" >>output.txt

dashBorder3=$(printf -- '-%.0s' {0..25})
echo "${dashBorder3// /-}  End Report ${dashBorder3// /-}" >>output.txt

