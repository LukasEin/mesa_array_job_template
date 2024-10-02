import argparse
import numpy as np

if __name__ == '__main__':
    parser = argparse.ArgumentParser(description='Change mass in a MESA inlist file depending on array id. Assumes that array job ids start with 0 and goes in steps of 1')

    parser.add_argument('inlist_path', type=str)
    parser.add_argument('range', metavar='SLURM_ARRAY_TASK_COUNT', type=int)
    parser.add_argument('index', metavar='SLURM_ARRAY_TASK_ID', type=int)

    args = parser.parse_args()

    inlist_path, range, index = args.inlist_path, args.range, args.index

    min_mass = 1.5
    max_mass = 6.0

    log_min_mass = np.log10(min_mass)
    log_max_mass = np.log10(max_mass)

    mass_arr = np.logspace(log_min_mass, log_max_mass, range)

    mass = mass_arr[index]

    with open(inlist_path) as f:
        content = f.read()

        updated_content = content.replace('initial_mass = 3.1d0', f'initial_mass = {mass:.3f}d0')

    with open(inlist_path, mode='w') as f:
        f.write(updated_content)

