#!/bin/bash

WORK_DIR=/nfs/scistore18/bugnegrp/leinramh/mesa_array_job_template
TASK_DIR=$WORK_DIR/tests/test_data/test_caches

mkdir -p $TASK_DIR

bash $WORK_DIR/helper_scripts/caches.sh $WORK_DIR $TASK_DIR
