#!/bin/bash
# Setup for cache folders
# creates all necessary caches in the task directory and adds the star_job.defaults file with the cache paths as well.

# Working and task directory has to be given
WORK_DIR=$1 # e.g. ___/mesa_array_job_template
TASK_DIR=$2 # e.g. ___/mesa_array_job_template/tasks/task_N

# create cache structure in the task directory
mkdir -p $TASK_DIR/caches/{eosDT_cache,ionization_cache,kap_cache,rates_cache}
# copy the default star_job.defaults file into the task directory
cp $WORK_DIR/non_default_files/star_job.defaults $TASK_DIR/star_job.defaults

EOS_CACHE=$TASK_DIR/caches/eosDT_cache
ION_CACHE=$TASK_DIR/caches/ionization_cache
KAP_CACHE=$TASK_DIR/caches/kap_cache
RAT_CACHE=$TASK_DIR/caches/rates_cache

# Update the paths to the cache directories in the star_job.defaults file
sed -i "s&eosDT_cache_dir = ''&eosDT_cache_dir = '${EOS_CACHE}'&" $TASK_DIR/star_job.defaults
sed -i "s&ionization_cache_dir = ''&ionization_cache_dir = '${ION_CACHE}'&" $TASK_DIR/star_job.defaults
sed -i "s&kap_cache_dir = ''&kap_cache_dir = '${KAP_CACHE}'&" $TASK_DIR/star_job.defaults
sed -i "s&rates_cache_dir = ''&rates_cache_dir = '${RAT_CACHE}'&" $TASK_DIR/star_job.defaults