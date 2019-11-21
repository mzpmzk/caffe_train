#!/bin/sh
if ! test -f ../prototxt/SSD300x300/lp_det_train.prototxt ;then
	echo "error: ../prototxt/SSD300x300/lp_det_train.prototxt does not exit."
	echo "please generate your own model prototxt primarily."
        exit 1
fi
if ! test -f ../prototxt/SSD300x300/lp_det_test.prototxt ;then
	echo "error: ../prototxt/SSD300x300/lp_det_test.prototxt does not exit."
	echo "please generate your own model prototxt primarily."
        exit 1
fi
../../../build/tools/caffe train --solver=../prototxt/SSD300x300/solver_det.prototxt -gpu 1 \
#--snapshot=../snapshot/deepccpd_res_v1_iter_370000.solverstate
