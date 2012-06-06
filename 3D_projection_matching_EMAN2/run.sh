#!/bin/csh -f

# Name of job
#$ -N holoIID

# Set parallel environment; set number of processors
#$ -pe orte 32

# Max walltime for this job (2 hrs)
##$ -l h_rt=02:00:00

# Merge the standard out and standard error to one file
##$ -j y

# Run job through csh shell
#$ -S /bin/csh

# use current working directory
#$ -cwd

# The following is for reporting only. It is not really needed
# to run the job. It will show up in your output file.
#
mpirun -np $NSLOTS /opt/qb3/eman-2.0-rc3/contrib/nogales/refine.py start3.hdf vols_2b_mr.hdf ref10_vols2b_mr mask2_mr.hdf --ou=32 --rs=1 --xr='2 2 2 1' --ts='2.0 2.0 1.0 0.5' --delta='25 20 15 10 ' --an='-1 -1 -1 -1'  --snr=0.07 --center='0' --term=70 --maxit=5 --ref_a=S --sym=c1 --cutoff=0.5 --sort --model_jump='1 1 1 1 ' --MPI --debug --full_output
