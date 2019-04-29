#!/bin/sh
if ! test -f ../prototxt/faceanglenet/faceanglenet_train_v1.prototxt ;then
	echo "error: ../prototxt/faceanglenet_train_v1.prototxt does not exit."
	echo "please generate your own model prototxt primarily."
        exit 1
fi
if ! test -f ../prototxt/faceanglenet/faceanglenet_test_v1.prototxt ;then
	echo "error: ../prototxt/faceanglenet_test_v1.prototxt does not exit."
	echo "please generate your own model prototxt primarily."
        exit 1
fi
../../../../build/tools/caffe train --solver=../solver/faceangle_solver_train_v1.prototxt -gpu 1 \
#--snapshot=../snapshot/deepanoFacelandmark_iter_352891.solverstate
