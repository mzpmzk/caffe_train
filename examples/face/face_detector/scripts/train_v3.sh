#!/bin/sh
if ! test -f ../prototxt/face_train_v3.prototxt ;then
	echo "error: ../prototxt/face_train_v3.prototxt does not exit."
	echo "please generate your own model prototxt primarily."
        exit 1
fi
if ! test -f ../prototxt/face_test_v3.prototxt ;then
	echo "error: ../prototxt/face_test_v3.prototxt does not exit."
	echo "please generate your own model prototxt primarily."
        exit 1
fi
../../../../build/tools/caffe train --solver=../solver/solver_train_v3.prototxt -gpu 0 \
#--snapshot=../snapshot/deepanoface_v3_iter_5000.solverstate