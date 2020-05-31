#!/bin/sh 
if ! test -f ../prototxt/Full_640x640/Centerface_v1_train.prototxt ;then 
   echo "error: ../prototxt/Full_640x640/Centerface_v1_train.prototxt does not exit." 
   echo "please generate your own model prototxt primarily." 
   exit 1 
fi
if ! test -f ../prototxt/Full_640x640/Centerface_v1_test.prototxt ;then 
   echo "error: ../prototxt/Full_640x640/Centerface_v1_test.prototxt does not exit." 
   echo "please generate your own model prototxt primarily." 
   exit 1 
fi
../../../../build/tools/caffe train --solver=../prototxt/Full_640x640/Centerface_v1_solver.prototxt --gpu 0 \
# --snapshot=../snapshot/Centerface_v1_0_iter_5000.solverstate 