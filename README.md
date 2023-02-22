# Slurm in Docker

## Overview

This is yet another attempt to run a Slurm cluster using Docker.
It works similar to projects like
[slurm-in-docker](https://github.com/SciDAS/slurm-in-docker) and
[slurm-docker-cluster](https://github.com/giovtorres/slurm-docker-cluster),
but I intend to keep it as simple as possible (e.g., Slurm is installed using
the package manager, not from source).

The cluster is composed of the following containers:

-  controller: Runs the scheduler master daemon (slurmctld)
-  database: Runs the accounting daemon (slurmdbd)
-  mysql: Runs the accounting storage (MySQL)
-  worker1-4: Runs the scheduler worker daemons (slurmd)

## Usage

1. Build the container images:
    ```
    docker compose build base # Make sure to build the base image first
    docker compose build
    ```

2. Launch the cluster:
    ```
    docker compose up
    ```

3. Interact with the cluster through the controller container:
    ```
    docker compose exec controller sinfo
    docker compose exec controller squeue
    docker compose exec controller sacct
    ```
