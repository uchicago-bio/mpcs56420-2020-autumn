#!/bin/sh

##########################################################
# For benchmarking analysis, we will create a big database
# by concatenating the Swiss Prot database to itself. The
# resulting file should be ~3G
#
# This saves us from having to download a big file.
# ##########################################################

# Download the swiss prot database from NCBI
wget https://ftp.ncbi.nlm.nih.gov/blast/db/FASTA/swissprot.gz 

# Unzip it
gunzip swissprot

# Create Big Swiss
touch big_swiss.db

# Loop and concatenate 
for i in 1 2 3 4 5 6 7 8 9 10 11 12 
do
  echo "Looping ... number $i"
  cat swissprot >> big_swiss.db
done
