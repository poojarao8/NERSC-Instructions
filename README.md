# NERSC-Instructions for running CUDA-Q container using shifter

1. **Login**
   ```bash
   ssh <username>@perlmutter.nersc.gov
   ```

2. **Pull the latest image using `shifter`**:
   ```bash
   shifterimg pull nvcr.io/nvidia/nightly/cuda-quantum:latest
   ```

3. **Request an allocation or use a batch script for running jobs.**
   **To run interactively:**
   ```bash
   salloc -N 1 --gpus-per-task=1 --ntasks-per-node=1 --gpu-bind=none -t 30 --qos=interactive -A <ACCOUNT> -C gpu --image=docker:nvcr.io/nvidia/nightly/cuda-quantum:latest --module=cuda-mpich
   srun -N 1 -n 1 shifter python sample_file.py
   ```
   
   **To run with script:**
   ```bash
   sbatch run.sh
   ```
