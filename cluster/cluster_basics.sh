#! /bin/bash
# cluster_basics.sh
# Commands to log in to the cluster, move files, and the like
# Drew Vollmer 2018-08-20

# Log in
ssh asv13@dcc-slogin.oit.duke.edu

# Push a file to the cluster
scp data001.txt asv13@dcc-slogin-02.oit.duke.edu:.
# Push a directory (large files)
rsync -av dir1/  asv13@dcc-slogin-02.oit.duke.edu:.
# Push a directory (small files) (deposits files, not a folder, in the target directory)
scp -r dir1/ asv13@dcc-slogin-02.oit.duke.edu:.

# Pull from the cluster
scp asv13@dcc-slogin-02.oit.duke.edu:output.txt .
# Pull a directory (large files)
rsync -av asv13@dcc-slogin-02.oit.duke.edu:~/dir1 .
# Pull a directory (small files)
scp -r asv13@dcc-slogin-02.oit.duke.edu:~/dir1 .

# Submit a job
sbatch run.sh
# Check job status
squeue -u asv13
