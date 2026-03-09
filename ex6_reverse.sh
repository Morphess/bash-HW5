#!/bin/bash

echo "Enter a sentence:"

read sentence 

echo $sentence | awk '{for(i=NF;i>0;i--) printf $i" "; print ""}'
