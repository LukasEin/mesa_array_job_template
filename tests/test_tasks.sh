#!/bin/bash

module load mesastar/23.05.1

WORK_DIR=/nfs/scistore18/bugnegrp/leinramh/mesa_array_job_template/
TASK_DIR=$WORK_DIR/tests/test_data/test_tasks/

BASE_MESA_DIR=$MESA_DIR/star/test_suite/make_co_wd/

mkdir -p $TASK_DIR

cp -a $BASE_MESA_DIR/. $TASK_DIR

module unload mesastar/23.05.1