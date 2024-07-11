#!/bin/bash

#SBATCH -A STF019
#SBATCH -J crystalworkflow-1node
#SBATCH -o %x-%j.out
#SBATCH -e %x-%j.err
#SBATCH -t 0:10:00
#SBATCH -p batch
#SBATCH -N 1

module load parallel
timeout 590 ./runme.sh
#./hmmer-3.3/install/bin/hmmsearch --cpu 120 --noali -o /lustre/orion/stf019/scratch/ketan2/output.txt ./Pfam-A.hmm ./fastafiles/uniprot_sprot.fasta 

