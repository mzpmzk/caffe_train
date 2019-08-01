name: "deepFace"
input: "data"
input_shape {
  dim: 1
  dim: 3
  dim: 320
  dim: 320
}
layer {
	name: "conv0"
	type: "Convolution"
	bottom: "data"
	top: "conv0"
	param {
		lr_mult: 1.0
		decay_mult: 1.0
	}
	convolution_param {
		num_output: 32
		bias_term: false
		pad: 1
		kernel_size: 3
		stride: 2
		weight_filler {
			type: "msra"
		}
	}
}
layer {
	name: "conv0/bn"
	type: "BatchNorm"
	bottom: "conv0"
	top: "conv0"
	param {
		lr_mult: 0
		decay_mult: 0
	}
	param {
		lr_mult: 0
		decay_mult: 0
	}
	param {
		lr_mult: 0
		decay_mult: 0
	}
}
layer {
	name: "conv0/scale"
	type: "Scale"
	bottom: "conv0"
	top: "conv0"
	param {
		lr_mult: 1.0
		decay_mult: 0.0
	}
	param {
		lr_mult: 2.0
		decay_mult: 0.0
	}
	scale_param {
		filler {
			value: 1
		}
		bias_term: true
		bias_filler {
			value: 0
		}
	}
}
layer {
	name: "conv0/relu"
	type: "ReLU"
	bottom: "conv0"
	top: "conv0"
}
layer {
	name: "conv1/dw"
	type: "Convolution"
	bottom: "conv0"
	top: "conv1/dw"
	param {
		lr_mult: 1.0
		decay_mult: 1.0
	}
	convolution_param {
		num_output: 32
		bias_term: false
		pad: 1
		kernel_size: 3
		group: 32
		engine: CAFFE
		weight_filler {
			type: "msra"
		}
	}
}
layer {
	name: "conv1/dw/bn"
	type: "BatchNorm"
	bottom: "conv1/dw"
	top: "conv1/dw"
	param {
		lr_mult: 0
		decay_mult: 0
	}
	param {
		lr_mult: 0
		decay_mult: 0
	}
	param {
		lr_mult: 0
		decay_mult: 0
	}
}
layer {
	name: "conv1/dw/scale"
	type: "Scale"
	bottom: "conv1/dw"
	top: "conv1/dw"
	param {
		lr_mult: 1.0
		decay_mult: 0.0
	}
	param {
		lr_mult: 2.0
		decay_mult: 0.0
	}
	scale_param {
		filler {
			value: 1
		}
		bias_term: true
		bias_filler {
			value: 0
		}
	}
}
layer {
	name: "conv1/dw/relu"
	type: "ReLU"
	bottom: "conv1/dw"
	top: "conv1/dw"
}
layer {
	name: "conv1"
	type: "Convolution"
	bottom: "conv1/dw"
	top: "conv1"
	param {
		lr_mult: 1.0
		decay_mult: 1.0
	}
	convolution_param {
		num_output: 64
		bias_term: false
		kernel_size: 1
		weight_filler {
			type: "msra"
		}
	}
}
layer {
	name: "conv1/bn"
	type: "BatchNorm"
	bottom: "conv1"
	top: "conv1"
	param {
		lr_mult: 0
		decay_mult: 0
	}
	param {
		lr_mult: 0
		decay_mult: 0
	}
	param {
		lr_mult: 0
		decay_mult: 0
	}
}
layer {
	name: "conv1/scale"
	type: "Scale"
	bottom: "conv1"
	top: "conv1"
	param {
		lr_mult: 1.0
		decay_mult: 0.0
	}
	param {
		lr_mult: 2.0
		decay_mult: 0.0
	}
	scale_param {
		filler {
			value: 1
		}
		bias_term: true
		bias_filler {
			value: 0
		}
	}
}
layer {
	name: "conv1/relu"
	type: "ReLU"
	bottom: "conv1"
	top: "conv1"
}
layer {
	name: "conv2/dw"
	type: "Convolution"
	bottom: "conv1"
	top: "conv2/dw"
	param {
		lr_mult: 1.0
		decay_mult: 1.0
	}
	convolution_param {
		num_output: 64
		bias_term: false
		pad: 1
		kernel_size: 3
		stride: 2
		group: 64
		engine: CAFFE
		weight_filler {
			type: "msra"
		}
	}
}
layer {
	name: "conv2/dw/bn"
	type: "BatchNorm"
	bottom: "conv2/dw"
	top: "conv2/dw"
	param {
		lr_mult: 0
		decay_mult: 0
	}
	param {
		lr_mult: 0
		decay_mult: 0
	}
	param {
		lr_mult: 0
		decay_mult: 0
	}
}
layer {
	name: "conv2/dw/scale"
	type: "Scale"
	bottom: "conv2/dw"
	top: "conv2/dw"
	param {
		lr_mult: 1.0
		decay_mult: 0.0
	}
	param {
		lr_mult: 2.0
		decay_mult: 0.0
	}
	scale_param {
		filler {
			value: 1
		}
		bias_term: true
		bias_filler {
			value: 0
		}
	}
}
layer {
	name: "conv2/dw/relu"
	type: "ReLU"
	bottom: "conv2/dw"
	top: "conv2/dw"
}
layer {
	name: "conv2"
	type: "Convolution"
	bottom: "conv2/dw"
	top: "conv2"
	param {
		lr_mult: 1.0
		decay_mult: 1.0
	}
	convolution_param {
		num_output: 128
		bias_term: false
		kernel_size: 1
		weight_filler {
			type: "msra"
		}
	}
}
layer {
	name: "conv2/bn"
	type: "BatchNorm"
	bottom: "conv2"
	top: "conv2"
	param {
		lr_mult: 0
		decay_mult: 0
	}
	param {
		lr_mult: 0
		decay_mult: 0
	}
	param {
		lr_mult: 0
		decay_mult: 0
	}
}
layer {
	name: "conv2/scale"
	type: "Scale"
	bottom: "conv2"
	top: "conv2"
	param {
		lr_mult: 1.0
		decay_mult: 0.0
	}
	param {
		lr_mult: 2.0
		decay_mult: 0.0
	}
	scale_param {
		filler {
			value: 1
		}
		bias_term: true
		bias_filler {
			value: 0
		}
	}
}
layer {
	name: "conv2/relu"
	type: "ReLU"
	bottom: "conv2"
	top: "conv2"
}
layer {
	name: "conv3/dw"
	type: "Convolution"
	bottom: "conv2"
	top: "conv3/dw"
	param {
		lr_mult: 1.0
		decay_mult: 1.0
	}
	convolution_param {
		num_output: 128
		bias_term: false
		pad: 1
		kernel_size: 3
		group: 128
		engine: CAFFE
		weight_filler {
			type: "msra"
		}
	}
}
layer {
	name: "conv3/dw/bn"
	type: "BatchNorm"
	bottom: "conv3/dw"
	top: "conv3/dw"
	param {
		lr_mult: 0
		decay_mult: 0
	}
	param {
		lr_mult: 0
		decay_mult: 0
	}
	param {
		lr_mult: 0
		decay_mult: 0
	}
}
layer {
	name: "conv3/dw/scale"
	type: "Scale"
	bottom: "conv3/dw"
	top: "conv3/dw"
	param {
		lr_mult: 1.0
		decay_mult: 0.0
	}
	param {
		lr_mult: 2.0
		decay_mult: 0.0
	}
	scale_param {
		filler {
			value: 1
		}
		bias_term: true
		bias_filler {
			value: 0
		}
	}
}
layer {
	name: "conv3/dw/relu"
	type: "ReLU"
	bottom: "conv3/dw"
	top: "conv3/dw"
}
layer {
	name: "conv3"
	type: "Convolution"
	bottom: "conv3/dw"
	top: "conv3"
	param {
		lr_mult: 1.0
		decay_mult: 1.0
	}
	convolution_param {
		num_output: 128
		bias_term: false
		kernel_size: 1
		weight_filler {
			type: "msra"
		}
	}
}
layer {
	name: "conv3/bn"
	type: "BatchNorm"
	bottom: "conv3"
	top: "conv3"
	param {
		lr_mult: 0
		decay_mult: 0
	}
	param {
		lr_mult: 0
		decay_mult: 0
	}
	param {
		lr_mult: 0
		decay_mult: 0
	}
}
layer {
	name: "conv3/scale"
	type: "Scale"
	bottom: "conv3"
	top: "conv3"
	param {
		lr_mult: 1.0
		decay_mult: 0.0
	}
	param {
		lr_mult: 2.0
		decay_mult: 0.0
	}
	scale_param {
		filler {
			value: 1
		}
		bias_term: true
		bias_filler {
			value: 0
		}
	}
}
layer {
	name: "conv3/relu"
	type: "ReLU"
	bottom: "conv3"
	top: "conv3"
}
layer {
	name: "conv4/dw"
	type: "Convolution"
	bottom: "conv3"
	top: "conv4/dw"
	param {
		lr_mult: 1.0
		decay_mult: 1.0
	}
	convolution_param {
		num_output: 128
		bias_term: false
		pad: 1
		kernel_size: 3
		stride: 2
		group: 128
		engine: CAFFE
		weight_filler {
			type: "msra"
		}
	}
}
layer {
	name: "conv4/dw/bn"
	type: "BatchNorm"
	bottom: "conv4/dw"
	top: "conv4/dw"
	param {
		lr_mult: 0
		decay_mult: 0
	}
	param {
		lr_mult: 0
		decay_mult: 0
	}
	param {
		lr_mult: 0
		decay_mult: 0
	}
}
layer {
	name: "conv4/dw/scale"
	type: "Scale"
	bottom: "conv4/dw"
	top: "conv4/dw"
	param {
		lr_mult: 1.0
		decay_mult: 0.0
	}
	param {
		lr_mult: 2.0
		decay_mult: 0.0
	}
	scale_param {
		filler {
			value: 1
		}
		bias_term: true
		bias_filler {
			value: 0
		}
	}
}
layer {
	name: "conv4/dw/relu"
	type: "ReLU"
	bottom: "conv4/dw"
	top: "conv4/dw"
}
layer {
	name: "conv4"
	type: "Convolution"
	bottom: "conv4/dw"
	top: "conv4"
	param {
		lr_mult: 1.0
		decay_mult: 1.0
	}
	convolution_param {
		num_output: 256
		bias_term: false
		kernel_size: 1
		weight_filler {
			type: "msra"
		}
	}
}
layer {
	name: "conv4/bn"
	type: "BatchNorm"
	bottom: "conv4"
	top: "conv4"
	param {
		lr_mult: 0
		decay_mult: 0
	}
	param {
		lr_mult: 0
		decay_mult: 0
	}
	param {
		lr_mult: 0
		decay_mult: 0
	}
}
layer {
	name: "conv4/scale"
	type: "Scale"
	bottom: "conv4"
	top: "conv4"
	param {
		lr_mult: 1.0
		decay_mult: 0.0
	}
	param {
		lr_mult: 2.0
		decay_mult: 0.0
	}
	scale_param {
		filler {
			value: 1
		}
		bias_term: true
		bias_filler {
			value: 0
		}
	}
}
layer {
	name: "conv4/relu"
	type: "ReLU"
	bottom: "conv4"
	top: "conv4"
}
layer {
	name: "conv5/dw"
	type: "Convolution"
	bottom: "conv4"
	top: "conv5/dw"
	param {
		lr_mult: 1.0
		decay_mult: 1.0
	}
	convolution_param {
		num_output: 256
		bias_term: false
		pad: 1
		kernel_size: 3
		group: 256
		engine: CAFFE
		weight_filler {
			type: "msra"
		}
	}
}
layer {
	name: "conv5/dw/bn"
	type: "BatchNorm"
	bottom: "conv5/dw"
	top: "conv5/dw"
	param {
		lr_mult: 0
		decay_mult: 0
	}
	param {
		lr_mult: 0
		decay_mult: 0
	}
	param {
		lr_mult: 0
		decay_mult: 0
	}
}
layer {
	name: "conv5/dw/scale"
	type: "Scale"
	bottom: "conv5/dw"
	top: "conv5/dw"
	param {
		lr_mult: 1.0
		decay_mult: 0.0
	}
	param {
		lr_mult: 2.0
		decay_mult: 0.0
	}
	scale_param {
		filler {
			value: 1
		}
		bias_term: true
		bias_filler {
			value: 0
		}
	}
}
layer {
	name: "conv5/dw/relu"
	type: "ReLU"
	bottom: "conv5/dw"
	top: "conv5/dw"
}
layer {
	name: "conv5"
	type: "Convolution"
	bottom: "conv5/dw"
	top: "conv5"
	param {
		lr_mult: 1.0
		decay_mult: 1.0
	}
	convolution_param {
		num_output: 256
		bias_term: false
		kernel_size: 1
		weight_filler {
			type: "msra"
		}
	}
}
layer {
	name: "conv5/bn"
	type: "BatchNorm"
	bottom: "conv5"
	top: "conv5"
	param {
		lr_mult: 0
		decay_mult: 0
	}
	param {
		lr_mult: 0
		decay_mult: 0
	}
	param {
		lr_mult: 0
		decay_mult: 0
	}
}
layer {
	name: "conv5/scale"
	type: "Scale"
	bottom: "conv5"
	top: "conv5"
	param {
		lr_mult: 1.0
		decay_mult: 0.0
	}
	param {
		lr_mult: 2.0
		decay_mult: 0.0
	}
	scale_param {
		filler {
			value: 1
		}
		bias_term: true
		bias_filler {
			value: 0
		}
	}
}
layer {
	name: "conv5/relu"
	type: "ReLU"
	bottom: "conv5"
	top: "conv5"
}
layer {
	name: "conv6/dw"
	type: "Convolution"
	bottom: "conv5"
	top: "conv6/dw"
	param {
		lr_mult: 1.0
		decay_mult: 1.0
	}
	convolution_param {
		num_output: 256
		bias_term: false
		pad: 1
		kernel_size: 3
		stride: 1
		group: 256
		engine: CAFFE
		weight_filler {
			type: "msra"
		}
	}
}
layer {
	name: "conv6/dw/bn"
	type: "BatchNorm"
	bottom: "conv6/dw"
	top: "conv6/dw"
	param {
		lr_mult: 0
		decay_mult: 0
	}
	param {
		lr_mult: 0
		decay_mult: 0
	}
	param {
		lr_mult: 0
		decay_mult: 0
	}
}
layer {
	name: "conv6/dw/scale"
	type: "Scale"
	bottom: "conv6/dw"
	top: "conv6/dw"
	param {
		lr_mult: 1.0
		decay_mult: 0.0
	}
	param {
		lr_mult: 2.0
		decay_mult: 0.0
	}
	scale_param {
		filler {
			value: 1
		}
		bias_term: true
		bias_filler {
			value: 0
		}
	}
}
layer {
	name: "conv6/dw/relu"
	type: "ReLU"
	bottom: "conv6/dw"
	top: "conv6/dw"
}
layer {
	name: "conv6"
	type: "Convolution"
	bottom: "conv6/dw"
	top: "conv6"
	param {
		lr_mult: 1.0
		decay_mult: 1.0
	}
	convolution_param {
		num_output: 256
		bias_term: false
		kernel_size: 1
		weight_filler {
			type: "msra"
		}
	}
}
layer {
	name: "conv6/bn"
	type: "BatchNorm"
	bottom: "conv6"
	top: "conv6"
	param {
		lr_mult: 0
		decay_mult: 0
	}
	param {
		lr_mult: 0
		decay_mult: 0
	}
	param {
		lr_mult: 0
		decay_mult: 0
	}
}
layer {
	name: "conv6/scale"
	type: "Scale"
	bottom: "conv6"
	top: "conv6"
	param {
		lr_mult: 1.0
		decay_mult: 0.0
	}
	param {
		lr_mult: 2.0
		decay_mult: 0.0
	}
	scale_param {
		filler {
			value: 1
		}
		bias_term: true
		bias_filler {
			value: 0
		}
	}
}
layer {
	name: "conv7/dw"
	type: "Convolution"
	bottom: "conv6"
	top: "conv7/dw"
	param {
		lr_mult: 1.0
		decay_mult: 1.0
	}
	convolution_param {
		num_output: 256
		bias_term: false
		pad: 1
		kernel_size: 3
		group: 256
		engine: CAFFE
		weight_filler {
			type: "msra"
		}
	}
}
layer {
	name: "conv7/dw/bn"
	type: "BatchNorm"
	bottom: "conv7/dw"
	top: "conv7/dw"
	param {
		lr_mult: 0
		decay_mult: 0
	}
	param {
		lr_mult: 0
		decay_mult: 0
	}
	param {
		lr_mult: 0
		decay_mult: 0
	}
}
layer {
	name: "conv7/dw/scale"
	type: "Scale"
	bottom: "conv7/dw"
	top: "conv7/dw"
	param {
		lr_mult: 1.0
		decay_mult: 0.0
	}
	param {
		lr_mult: 2.0
		decay_mult: 0.0
	}
	scale_param {
		filler {
			value: 1
		}
		bias_term: true
		bias_filler {
			value: 0
		}
	}
}
layer {
	name: "conv7/dw/relu"
	type: "ReLU"
	bottom: "conv7/dw"
	top: "conv7/dw"
}
layer {
	name: "conv7"
	type: "Convolution"
	bottom: "conv7/dw"
	top: "conv7"
	param {
		lr_mult: 1.0
		decay_mult: 1.0
	}
	convolution_param {
		num_output: 256
		bias_term: false
		kernel_size: 1
		weight_filler {
			type: "msra"
		}
	}
}
layer {
	name: "conv7/bn"
	type: "BatchNorm"
	bottom: "conv7"
	top: "conv7"
	param {
		lr_mult: 0
		decay_mult: 0
	}
	param {
		lr_mult: 0
		decay_mult: 0
	}
	param {
		lr_mult: 0
		decay_mult: 0
	}
}
layer {
	name: "conv7/scale"
	type: "Scale"
	bottom: "conv7"
	top: "conv7"
	param {
		lr_mult: 1.0
		decay_mult: 0.0
	}
	param {
		lr_mult: 2.0
		decay_mult: 0.0
	}
	scale_param {
		filler {
			value: 1
		}
		bias_term: true
		bias_filler {
			value: 0
		}
	}
}
layer {
	name: "conv7/relu"
	type: "ReLU"
	bottom: "conv7"
	top: "conv7"
}
layer {
	name: "conv8/dw"
	type: "Convolution"
	bottom: "conv7"
	top: "conv8/dw"
	param {
		lr_mult: 1.0
		decay_mult: 1.0
	}
	convolution_param {
		num_output: 256
		bias_term: false
		pad: 1
		kernel_size: 3
		group: 256
		engine: CAFFE
		weight_filler {
			type: "msra"
		}
	}
}
layer {
	name: "conv8/dw/bn"
	type: "BatchNorm"
	bottom: "conv8/dw"
	top: "conv8/dw"
	param {
		lr_mult: 0
		decay_mult: 0
	}
	param {
		lr_mult: 0
		decay_mult: 0
	}
	param {
		lr_mult: 0
		decay_mult: 0
	}
}
layer {
	name: "conv8/dw/scale"
	type: "Scale"
	bottom: "conv8/dw"
	top: "conv8/dw"
	param {
		lr_mult: 1.0
		decay_mult: 0.0
	}
	param {
		lr_mult: 2.0
		decay_mult: 0.0
	}
	scale_param {
		filler {
			value: 1
		}
		bias_term: true
		bias_filler {
			value: 0
		}
	}
}
layer {
	name: "conv8/dw/relu"
	type: "ReLU"
	bottom: "conv8/dw"
	top: "conv8/dw"
}
layer {
	name: "conv8"
	type: "Convolution"
	bottom: "conv8/dw"
	top: "conv8"
	param {
		lr_mult: 1.0
		decay_mult: 1.0
	}
	convolution_param {
		num_output: 256
		bias_term: false
		kernel_size: 1
		weight_filler {
			type: "msra"
		}
	}
}
layer {
	name: "conv8/bn"
	type: "BatchNorm"
	bottom: "conv8"
	top: "conv8"
	param {
		lr_mult: 0
		decay_mult: 0
	}
	param {
		lr_mult: 0
		decay_mult: 0
	}
	param {
		lr_mult: 0
		decay_mult: 0
	}
}
layer {
	name: "conv8/scale"
	type: "Scale"
	bottom: "conv8"
	top: "conv8"
	param {
		lr_mult: 1.0
		decay_mult: 0.0
	}
	param {
		lr_mult: 2.0
		decay_mult: 0.0
	}
	scale_param {
		filler {
			value: 1
		}
		bias_term: true
		bias_filler {
			value: 0
		}
	}
}
layer {
	name: "conv8_block0"
	type: "Eltwise"
	bottom: "conv8"
	bottom: "conv6"
	top: "conv8_block0"
	eltwise_param {
	operation: SUM
	}
}
layer {
	name: "conv9/dw"
	type: "Convolution"
	bottom: "conv8_block0"
	top: "conv9/dw"
	param {
		lr_mult: 1.0
		decay_mult: 1.0
	}
	convolution_param {
		num_output: 256
		bias_term: false
		pad: 1
		kernel_size: 3
		stride: 2
		group: 256
		engine: CAFFE
		weight_filler {
			type: "msra"
		}
	}
}
layer {
	name: "conv9/dw/bn"
	type: "BatchNorm"
	bottom: "conv9/dw"
	top: "conv9/dw"
	param {
		lr_mult: 0
		decay_mult: 0
	}
	param {
		lr_mult: 0
		decay_mult: 0
	}
	param {
		lr_mult: 0
		decay_mult: 0
	}
}
layer {
	name: "conv9/dw/scale"
	type: "Scale"
	bottom: "conv9/dw"
	top: "conv9/dw"
	param {
		lr_mult: 1.0
		decay_mult: 0.0
	}
	param {
		lr_mult: 2.0
		decay_mult: 0.0
	}
	scale_param {
		filler {
			value: 1
		}
		bias_term: true
		bias_filler {
			value: 0
		}
	}
}
layer {
	name: "conv9/dw/relu"
	type: "ReLU"
	bottom: "conv9/dw"
	top: "conv9/dw"
}
layer {
	name: "conv9"
	type: "Convolution"
	bottom: "conv9/dw"
	top: "conv9"
	param {
		lr_mult: 1.0
		decay_mult: 1.0
	}
	convolution_param {
		num_output: 64
		bias_term: false
		kernel_size: 1
		weight_filler {
			type: "msra"
		}
	}
}
layer {
	name: "conv9/bn"
	type: "BatchNorm"
	bottom: "conv9"
	top: "conv9"
	param {
		lr_mult: 0
		decay_mult: 0
	}
	param {
		lr_mult: 0
		decay_mult: 0
	}
	param {
		lr_mult: 0
		decay_mult: 0
	}
}
layer {
	name: "conv9/scale"
	type: "Scale"
	bottom: "conv9"
	top: "conv9"
	param {
		lr_mult: 1.0
		decay_mult: 0.0
	}
	param {
		lr_mult: 2.0
		decay_mult: 0.0
	}
	scale_param {
		filler {
			value: 1
		}
		bias_term: true
		bias_filler {
			value: 0
		}
	}
}
layer {
	name: "conv9/relu"
	type: "ReLU"
	bottom: "conv9"
	top: "conv9"
}
layer {
	name: "conv10_1/dw"
	type: "Convolution"
	bottom: "conv8_block0"
	top: "conv10_1/dw"
	param {
		lr_mult: 1.0
		decay_mult: 1.0
	}
	convolution_param {
		num_output: 256
		bias_term: false
		pad: 1
		kernel_size: 3
		stride: 2
		group: 256
		engine: CAFFE
		weight_filler {
			type: "msra"
		}
	}
}
layer {
	name: "conv10_1/dw/bn"
	type: "BatchNorm"
	bottom: "conv10_1/dw"
	top: "conv10_1/dw"
	param {
		lr_mult: 0
		decay_mult: 0
	}
	param {
		lr_mult: 0
		decay_mult: 0
	}
	param {
		lr_mult: 0
		decay_mult: 0
	}
}
layer {
	name: "conv10_1/dw/scale"
	type: "Scale"
	bottom: "conv10_1/dw"
	top: "conv10_1/dw"
	param {
		lr_mult: 1.0
		decay_mult: 0.0
	}
	param {
		lr_mult: 2.0
		decay_mult: 0.0
	}
	scale_param {
		filler {
			value: 1
		}
		bias_term: true
		bias_filler {
			value: 0
		}
	}
}
layer {
	name: "conv10_1/dw/relu"
	type: "ReLU"
	bottom: "conv10_1/dw"
	top: "conv10_1/dw"
}
layer {
	name: "conv10_1"
	type: "Convolution"
	bottom: "conv10_1/dw"
	top: "conv10_1"
	param {
		lr_mult: 1.0
		decay_mult: 1.0
	}
	convolution_param {
		num_output: 64
		bias_term: false
		kernel_size: 1
		weight_filler {
			type: "msra"
		}
	}
}
layer {
	name: "conv10_1/bn"
	type: "BatchNorm"
	bottom: "conv10_1"
	top: "conv10_1"
	param {
		lr_mult: 0
		decay_mult: 0
	}
	param {
		lr_mult: 0
		decay_mult: 0
	}
	param {
		lr_mult: 0
		decay_mult: 0
	}
}
layer {
	name: "conv10_1/scale"
	type: "Scale"
	bottom: "conv10_1"
	top: "conv10_1"
	param {
		lr_mult: 1.0
		decay_mult: 0.0
	}
	param {
		lr_mult: 2.0
		decay_mult: 0.0
	}
	scale_param {
		filler {
			value: 1
		}
		bias_term: true
		bias_filler {
			value: 0
		}
	}
}
layer{
	name: "conv10_1/relu"
	type: "ReLU"
	bottom: "conv10_1"
	top: "conv10_1"
}
layer {
	name: "conv8_block0_conv/dw"
	type: "Convolution"
	bottom: "conv8_block0"
	top: "conv8_block0_conv/dw"
	param {
		lr_mult: 1.0
		decay_mult: 1.0
	}
	convolution_param {
		num_output: 256
		bias_term: false
		kernel_size: 3
		stride: 2
		pad: 1
		group: 256
		weight_filler {
			type: "msra"
		}
	}
}
layer {
	name: "conv8_block0_conv/dw/bn"
	type: "BatchNorm"
	bottom: "conv8_block0_conv/dw"
	top: "conv8_block0_conv/dw"
	param {
		lr_mult: 0
		decay_mult: 0
	}
	param {
		lr_mult: 0
		decay_mult: 0
	}
	param {
		lr_mult: 0
		decay_mult: 0
	}
}
layer {
	name: "conv8_block0_conv/dw/scale"
	type: "Scale"
	bottom: "conv8_block0_conv/dw"
	top: "conv8_block0_conv/dw"
	param {
		lr_mult: 1.0
		decay_mult: 0.0
	}
	param {
		lr_mult: 2.0
		decay_mult: 0.0
	}
	scale_param {
		filler {
			value: 1
		}
		bias_term: true
		bias_filler {
			value: 0
		}
	}
}
layer {
	name: "conv8_block0_conv/dw/relu"
	type: "ReLU"
	bottom: "conv8_block0_conv/dw"
	top: "conv8_block0_conv/dw"
}
layer {
	name: "conv8_block0_conv"
	type: "Convolution"
	bottom: "conv8_block0_conv/dw"
	top: "conv8_block0_conv"
	param {
		lr_mult: 1.0
		decay_mult: 1.0
	}
	convolution_param {
		num_output: 128
		bias_term: false
		kernel_size: 1
		weight_filler {
			type: "msra"
		}
	}
}
layer {
	name: "conv8_block0_conv/bn"
	type: "BatchNorm"
	bottom: "conv8_block0_conv"
	top: "conv8_block0_conv"
	param {
		lr_mult: 0
		decay_mult: 0
	}
	param {
		lr_mult: 0
		decay_mult: 0
	}
	param {
		lr_mult: 0
		decay_mult: 0
	}
}
layer {
	name: "conv8_block0_conv/scale"
	type: "Scale"
	bottom: "conv8_block0_conv"
	top: "conv8_block0_conv"
	param {
		lr_mult: 1.0
		decay_mult: 0.0
	}
	param {
		lr_mult: 2.0
		decay_mult: 0.0
	}
	scale_param {
		filler {
			value: 1
		}
		bias_term: true
		bias_filler {
			value: 0
		}
	}
}
layer{
	name: "conv8_block0_conv/relu"
	type: "ReLU"
	bottom: "conv8_block0_conv"
	top: "conv8_block0_conv"
}
layer {
	name: "conv10_block1"
	type: "Concat"
	bottom: "conv10_1"
	bottom: "conv8_block0_conv"
	bottom: "conv9"
	top: "conv10_block1"
}
layer {
	name: "conv10/dw"
	type: "Convolution"
	bottom: "conv10_block1"
	top: "conv10/dw"
	param {
		lr_mult: 1.0
		decay_mult: 1.0
	}
	convolution_param {
		num_output: 256
		bias_term: false
		pad: 1
		kernel_size: 3
		group: 256
		engine: CAFFE
		weight_filler {
			type: "msra"
		}
	}
}
layer {
	name: "conv10/dw/bn"
	type: "BatchNorm"
	bottom: "conv10/dw"
	top: "conv10/dw"
	param {
		lr_mult: 0
		decay_mult: 0
	}
	param {
		lr_mult: 0
		decay_mult: 0
	}
	param {
		lr_mult: 0
		decay_mult: 0
	}
}
layer {
	name: "conv10/dw/scale"
	type: "Scale"
	bottom: "conv10/dw"
	top: "conv10/dw"
	param {
		lr_mult: 1.0
		decay_mult: 0.0
	}
	param {
		lr_mult: 2.0
		decay_mult: 0.0
	}
	scale_param {
		filler {
			value: 1
		}
		bias_term: true
		bias_filler {
			value: 0
		}
	}
}
layer {
	name: "conv10/dw/relu"
	type: "ReLU"
	bottom: "conv10/dw"
	top: "conv10/dw"
}
layer {
	name: "conv10"
	type: "Convolution"
	bottom: "conv10/dw"
	top: "conv10"
	param {
		lr_mult: 1.0
		decay_mult: 1.0
	}
	convolution_param {
		num_output: 128
		bias_term: false
		kernel_size: 1
		weight_filler {
			type: "msra"
		}
	}
}
layer {
	name: "conv10/bn"
	type: "BatchNorm"
	bottom: "conv10"
	top: "conv10"
	param {
		lr_mult: 0
		decay_mult: 0
	}
	param {
		lr_mult: 0
		decay_mult: 0
	}
	param {
		lr_mult: 0
		decay_mult: 0
	}
}
layer {
	name: "conv10/scale"
	type: "Scale"
	bottom: "conv10"
	top: "conv10"
	param {
		lr_mult: 1.0
		decay_mult: 0.0
	}
	param {
		lr_mult: 2.0
		decay_mult: 0.0
	}
	scale_param {
		filler {
			value: 1
		}
		bias_term: true
		bias_filler {
			value: 0
		}
	}
}
layer {
	name: "conv10/relu"
	type: "ReLU"
	bottom: "conv10"
	top: "conv10"
}
layer {
	name: "conv11/dw"
	type: "Convolution"
	bottom: "conv10"
	top: "conv11/dw"
	param {
		lr_mult: 1.0
		decay_mult: 1.0
	}
	convolution_param {
		num_output: 128
		bias_term: false
		pad: 1
		kernel_size: 3
		group: 128
		engine: CAFFE
		weight_filler {
			type: "msra"
		}
	}
}
layer {
	name: "conv11/dw/bn"
	type: "BatchNorm"
	bottom: "conv11/dw"
	top: "conv11/dw"
	param {
		lr_mult: 0
		decay_mult: 0
	}
	param {
		lr_mult: 0
		decay_mult: 0
	}
	param {
		lr_mult: 0
		decay_mult: 0
	}
}
layer {
	name: "conv11/dw/scale"
	type: "Scale"
	bottom: "conv11/dw"
	top: "conv11/dw"
	param {
		lr_mult: 1.0
		decay_mult: 0.0
	}
	param {
		lr_mult: 2.0
		decay_mult: 0.0
	}
	scale_param {
		filler {
			value: 1
		}
		bias_term: true
		bias_filler {
			value: 0
		}
	}
}
layer {
	name: "conv11/dw/relu"
	type: "ReLU"
	bottom: "conv11/dw"
	top: "conv11/dw"
}
layer {
	name: "conv11_1"
	type: "Convolution"
	bottom: "conv11/dw"
	top: "conv11_1"
	param {
		lr_mult: 1.0
		decay_mult: 1.0
	}
	convolution_param {
		num_output: 256
		bias_term: false
		kernel_size: 1
		weight_filler {
			type: "msra"
		}
	}
}
layer {
	name: "conv11_1/bn"
	type: "BatchNorm"
	bottom: "conv11_1"
	top: "conv11_1"
	param {
		lr_mult: 0
		decay_mult: 0
	}
	param {
		lr_mult: 0
		decay_mult: 0
	}
	param {
		lr_mult: 0
		decay_mult: 0
	}
}
layer {
	name: "conv11_1/scale"
	type: "Scale"
	bottom: "conv11_1"
	top: "conv11_1"
	param {
		lr_mult: 1.0
		decay_mult: 0.0
	}
	param {
		lr_mult: 2.0
		decay_mult: 0.0
	}
	scale_param {
		filler {
			value: 1
		}
		bias_term: true
		bias_filler {
			value: 0
		}
	}
}
layer {
	name: "conv11_1_block2"
	type: "Eltwise"
	bottom: "conv11_1"
	bottom: "conv10_block1"
	top: "conv11_1_block2"
	eltwise_param {
		operation: SUM
	}
}
layer {
	name: "conv12/dw"
	type: "Convolution"
	bottom: "conv11_1_block2"
	top: "conv12/dw"
	param {
		lr_mult: 1.0
		decay_mult: 1.0
	}
	convolution_param {
		num_output: 256
		bias_term: false
		pad: 1
		kernel_size: 3
		stride: 2
		group: 256
		engine: CAFFE
		weight_filler {
			type: "msra"
		}
	}
}
layer {
	name: "conv12/dw/bn"
	type: "BatchNorm"
	bottom: "conv12/dw"
	top: "conv12/dw"
	param {
		lr_mult: 0
		decay_mult: 0
	}
	param {
		lr_mult: 0
		decay_mult: 0
	}
	param {
		lr_mult: 0
		decay_mult: 0
	}
}
layer {
	name: "conv12/dw/scale"
	type: "Scale"
	bottom: "conv12/dw"
	top: "conv12/dw"
	param {
		lr_mult: 1.0
		decay_mult: 0.0
	}
	param {
		lr_mult: 2.0
		decay_mult: 0.0
	}
	scale_param {
		filler {
			value: 1
		}
		bias_term: true
		bias_filler {
			value: 0
		}
	}
}
layer {
	name: "conv12/dw/relu"
	type: "ReLU"
	bottom: "conv12/dw"
	top: "conv12/dw"
}
layer {
	name: "conv12"
	type: "Convolution"
	bottom: "conv12/dw"
	top: "conv12"
	param {
		lr_mult: 1.0
		decay_mult: 1.0
	}
	convolution_param {
		num_output: 128
		bias_term: false
		kernel_size: 1
		weight_filler {
			type: "msra"
		}
	}
}
layer {
	name: "conv12/bn"
	type: "BatchNorm"
	bottom: "conv12"
	top: "conv12"
	param {
		lr_mult: 0
		decay_mult: 0
	}
	param {
		lr_mult: 0
		decay_mult: 0
	}
	param {
		lr_mult: 0
		decay_mult: 0
	}
}
layer {
	name: "conv12/scale"
	type: "Scale"
	bottom: "conv12"
	top: "conv12"
	param {
		lr_mult: 1.0
		decay_mult: 0.0
	}
	param {
		lr_mult: 2.0
		decay_mult: 0.0
	}
	scale_param {
		filler {
			value: 1
		}
		bias_term: true
		bias_filler {
			value: 0
		}
	}
}
layer {
	name: "conv12/relu"
	type: "ReLU"
	bottom: "conv12"
	top: "conv12"
}
layer {
	name: "conv13_block2_conv/dw"
	type: "Convolution"
	bottom: "conv11_1_block2"
	top: "conv13_block2_conv/dw"
	param {
		lr_mult: 1.0
		decay_mult: 1.0
	}
	convolution_param {
		num_output: 256
		bias_term: false
		pad: 1
		kernel_size: 3
		stride: 2
		group: 256
		engine: CAFFE
		weight_filler {
			type: "msra"
		}
	}
}
layer {
	name: "conv13_block2_conv/dw/bn"
	type: "BatchNorm"
	bottom: "conv13_block2_conv/dw"
	top: "conv13_block2_conv/dw"
	param {
		lr_mult: 0
		decay_mult: 0
	}
	param {
		lr_mult: 0
		decay_mult: 0
	}
	param {
		lr_mult: 0
		decay_mult: 0
	}
}
layer {
	name: "conv13_block2_conv/dw/scale"
	type: "Scale"
	bottom: "conv13_block2_conv/dw"
	top: "conv13_block2_conv/dw"
	param {
		lr_mult: 1.0
		decay_mult: 0.0
	}
	param {
		lr_mult: 2.0
		decay_mult: 0.0
	}
	scale_param {
		filler {
			value: 1
		}
		bias_term: true
		bias_filler {
			value: 0
		}
	}
}

layer {
	name: "conv13_block2_conv/dw/relu"
	type: "ReLU"
	bottom: "conv13_block2_conv/dw"
	top: "conv13_block2_conv/dw"
}
layer {
	name: "conv13_block2_conv"
	type: "Convolution"
	bottom: "conv13_block2_conv/dw"
	top: "conv13_block2_conv"
	param {
		lr_mult: 1.0
		decay_mult: 1.0
	}
	convolution_param {
		num_output: 128
		bias_term: false
		kernel_size: 1
		weight_filler {
			type: "msra"
		}
	}
}
layer {
	name: "conv13_block2_conv/bn"
	type: "BatchNorm"
	bottom: "conv13_block2_conv"
	top: "conv13_block2_conv"
	param {
		lr_mult: 0
		decay_mult: 0
	}
	param {
		lr_mult: 0
		decay_mult: 0
	}
	param {
		lr_mult: 0
		decay_mult: 0
	}
}
layer {
	name: "conv13_block2_conv/scale"
	type: "Scale"
	bottom: "conv13_block2_conv"
	top: "conv13_block2_conv"
	param {
		lr_mult: 1.0
		decay_mult: 0.0
	}
	param {
		lr_mult: 2.0
		decay_mult: 0.0
	}
	scale_param {
		filler {
			value: 1
		}
		bias_term: true
		bias_filler {
			value: 0
		}
	}
}
layer{
	name: "conv13_block2_conv/relu"
	type: "ReLU"
	bottom: "conv13_block2_conv"
	top: "conv13_block2_conv"
}
layer {
	name: "conv13_block3"
	type: "Concat"
	bottom: "conv12"
	bottom: "conv13_block2_conv"
	top: "conv13_block3"
}
layer {
	name: "conv14_1"
	type: "Convolution"
	bottom: "conv13_block3"
	top: "conv14_1"
	param {
		lr_mult: 1.0
		decay_mult: 1.0
	}
	convolution_param {
		num_output: 256
		bias_term: false
		kernel_size: 1
		weight_filler {
			type: "msra"
		}
	}
}
layer {
	name: "conv14_1/bn"
	type: "BatchNorm"
	bottom: "conv14_1"
	top: "conv14_1"
	param {
		lr_mult: 0
		decay_mult: 0
	}
	param {
		lr_mult: 0
		decay_mult: 0
	}
	param {
		lr_mult: 0
		decay_mult: 0
	}
}
layer {
	name: "conv14_1/scale"
	type: "Scale"
	bottom: "conv14_1"
	top: "conv14_1"
	param {
		lr_mult: 1.0
		decay_mult: 0.0
	}
	param {
		lr_mult: 2.0
		decay_mult: 0.0
	}
	scale_param {
		filler {
			value: 1
		}
		bias_term: true
		bias_filler {
			value: 0
		}
	}
}
layer {
	name: "conv14_1/relu"
	type: "ReLU"
	bottom: "conv14_1"
	top: "conv14_1"
}
layer {
	name: "conv14_2"
	type: "Convolution"
	bottom: "conv14_1"
	top: "conv14_2"
	param {
		lr_mult: 1.0
		decay_mult: 1.0
	}
	convolution_param {
		num_output: 512
		bias_term: false
		pad: 1
		kernel_size: 3
		stride: 2
		weight_filler {
			type: "msra"
		}
	}
}
layer {
	name: "conv14_2/bn"
	type: "BatchNorm"
	bottom: "conv14_2"
	top: "conv14_2"
	param {
		lr_mult: 0
		decay_mult: 0
	}
	param {
		lr_mult: 0
		decay_mult: 0
	}
	param {
		lr_mult: 0
		decay_mult: 0
	}
}
layer {
	name: "conv14_2/scale"
	type: "Scale"
	bottom: "conv14_2"
	top: "conv14_2"
	param {
		lr_mult: 1.0
		decay_mult: 0.0
	}
	param {
		lr_mult: 2.0
		decay_mult: 0.0
	}
	scale_param {
		filler {
			value: 1
		}
		bias_term: true
		bias_filler {
			value: 0
		}
	}
}
layer {
	name: "conv14_2/relu"
	type: "ReLU"
	bottom: "conv14_2"
	top: "conv14_2"
}
layer {
	name: "conv15_1"
	type: "Convolution"
	bottom: "conv14_2"
	top: "conv15_1"
	param {
		lr_mult: 1.0
		decay_mult: 1.0
	}
	convolution_param {
		num_output: 128
		bias_term: false
		kernel_size: 1
		weight_filler {
			type: "msra"
		}
	}
}
layer {
	name: "conv15_1/bn"
	type: "BatchNorm"
	bottom: "conv15_1"
	top: "conv15_1"
	param {
		lr_mult: 0
		decay_mult: 0
	}
	param {
		lr_mult: 0
		decay_mult: 0
	}
	param {
		lr_mult: 0
		decay_mult: 0
	}
}
layer {
	name: "conv15_1/scale"
	type: "Scale"
	bottom: "conv15_1"
	top: "conv15_1"
	param {
		lr_mult: 1.0
		decay_mult: 0.0
	}
	param {
		lr_mult: 2.0
		decay_mult: 0.0
	}
	scale_param {
		filler {
			value: 1
		}
		bias_term: true
		bias_filler {
			value: 0
		}
	}
}
layer {
	name: "conv15_1/relu"
	type: "ReLU"
	bottom: "conv15_1"
	top: "conv15_1"
}
layer {
	name: "conv15_2"
	type: "Convolution"
	bottom: "conv15_1"
	top: "conv15_2"
	param {
		lr_mult: 1.0
		decay_mult: 1.0
	}
	convolution_param {
		num_output: 256
		bias_term: false
		pad: 1
		kernel_size: 3
		stride: 2
		weight_filler {
			type: "msra"
		}
	}
}
layer {
	name: "conv15_2/bn"
	type: "BatchNorm"
	bottom: "conv15_2"
	top: "conv15_2"
	param {
		lr_mult: 0
		decay_mult: 0
	}
	param {
		lr_mult: 0
		decay_mult: 0
	}
	param {
		lr_mult: 0
		decay_mult: 0
	}
}
layer {
	name: "conv15_2/scale"
	type: "Scale"
	bottom: "conv15_2"
	top: "conv15_2"
	param {
		lr_mult: 1.0
		decay_mult: 0.0
	}
	param {
		lr_mult: 2.0
		decay_mult: 0.0
	}
	scale_param {
		filler {
			value: 1
		}
		bias_term: true
		bias_filler {
			value: 0
		}
	}
}
layer {
	name: "conv15_2/relu"
	type: "ReLU"
	bottom: "conv15_2"
	top: "conv15_2"
}
layer {
	name: "conv16_1"
	type: "Convolution"
	bottom: "conv15_2"
	top: "conv16_1"
	param {
		lr_mult: 1.0
		decay_mult: 1.0
	}
	convolution_param {
		num_output: 128
		bias_term: false
		kernel_size: 1
		weight_filler {
			type: "msra"
		}
	}
}
layer {
	name: "conv16_1/bn"
	type: "BatchNorm"
	bottom: "conv16_1"
	top: "conv16_1"
	param {
		lr_mult: 0
		decay_mult: 0
	}
	param {
		lr_mult: 0
		decay_mult: 0
	}
	param {
		lr_mult: 0
		decay_mult: 0
	}
}
layer {
	name: "conv16_1/scale"
	type: "Scale"
	bottom: "conv16_1"
	top: "conv16_1"
	param {
		lr_mult: 1.0
		decay_mult: 0.0
	}
	param {
		lr_mult: 2.0
		decay_mult: 0.0
	}
	scale_param {
		filler {
			value: 1
		}
		bias_term: true
		bias_filler {
			value: 0
		}
	}
}
layer {
	name: "conv16_1/relu"
	type: "ReLU"
	bottom: "conv16_1"
	top: "conv16_1"
}
layer {
	name: "conv16_2"
	type: "Convolution"
	bottom: "conv16_1"
	top: "conv16_2"
	param {
		lr_mult: 1.0
		decay_mult: 1.0
	}
	convolution_param {
		num_output: 256
		bias_term: false
		pad: 1
		kernel_size: 3
		stride: 2
		weight_filler {
			type: "msra"
		}
	}
}
layer {
	name: "conv16_2/bn"
	type: "BatchNorm"
	bottom: "conv16_2"
	top: "conv16_2"
	param {
		lr_mult: 0
		decay_mult: 0
	}
	param {
		lr_mult: 0
		decay_mult: 0
	}
	param {
		lr_mult: 0
		decay_mult: 0
	}
}
layer {
	name: "conv16_2/scale"
	type: "Scale"
	bottom: "conv16_2"
	top: "conv16_2"
	param {
		lr_mult: 1.0
		decay_mult: 0.0
	}
	param {
		lr_mult: 2.0
		decay_mult: 0.0
	}
	scale_param {
		filler {
			value: 1
		}
		bias_term: true
		bias_filler {
			value: 0
		}
	}
}
layer {
	name: "conv16_2/relu"
	type: "ReLU"
	bottom: "conv16_2"
	top: "conv16_2"
}
layer {
	name: "conv17_1"
	type: "Convolution"
	bottom: "conv16_2"
	top: "conv17_1"
	param {
		lr_mult: 1.0
		decay_mult: 1.0
	}
	convolution_param {
		num_output: 64
		bias_term: false
		kernel_size: 1
		weight_filler {
			type: "msra"
		}
	}
}
layer {
	name: "conv17_1/bn"
	type: "BatchNorm"
	bottom: "conv17_1"
	top: "conv17_1"
	param {
		lr_mult: 0
		decay_mult: 0
	}
	param {
		lr_mult: 0
		decay_mult: 0
	}
	param {
		lr_mult: 0
		decay_mult: 0
	}
}
layer {
	name: "conv17_1/scale"
	type: "Scale"
	bottom: "conv17_1"
	top: "conv17_1"
	param {
		lr_mult: 1.0
		decay_mult: 0.0
	}
	param {
		lr_mult: 2.0
		decay_mult: 0.0
	}
	scale_param {
		filler {
			value: 1
		}
		bias_term: true
		bias_filler {
			value: 0
		}
	}
}
layer {
	name: "conv17_1/relu"
	type: "ReLU"
	bottom: "conv17_1"
	top: "conv17_1"
}
layer {
	name: "conv17_2"
	type: "Convolution"
	bottom: "conv17_1"
	top: "conv17_2"
	param {
		lr_mult: 1.0
		decay_mult: 1.0
	}
	convolution_param {
		num_output: 128
		bias_term: false
		pad: 1
		kernel_size: 3
		stride: 2
		weight_filler {
			type: "msra"
		}
	}
}
layer {
	name: "conv17_2/bn"
	type: "BatchNorm"
	bottom: "conv17_2"
	top: "conv17_2"
	param {
		lr_mult: 0
		decay_mult: 0
	}
	param {
		lr_mult: 0
		decay_mult: 0
	}
	param {
		lr_mult: 0
		decay_mult: 0
	}
}
layer {
	name: "conv17_2/scale"
	type: "Scale"
	bottom: "conv17_2"
	top: "conv17_2"
	param {
		lr_mult: 1.0
		decay_mult: 0.0
	}
	param {
		lr_mult: 2.0
		decay_mult: 0.0
	}
	scale_param {
		filler {
			value: 1
		}
		bias_term: true
		bias_filler {
			value: 0
		}
	}
}
layer {
	name: "conv17_2/relu"
	type: "ReLU"
	bottom: "conv17_2"
	top: "conv17_2"
}
#######################################################################
#                             modeule one                             #
#######################################################################
#################context moudle####################
layer{
	name: "lfpn_1_moudle_cpm_3_3"
	type: "Convolution"
	bottom: "conv8_block0"
	top: "lfpn_1_moudle_cpm_3_3"
	param {
		lr_mult: 1
		decay_mult: 1
	}
	convolution_param {
		num_output: 256
		bias_term: false
		kernel_size: 3
		group: 256
		pad: 1
		weight_filler {
			type: "msra"
		}
	}
}
layer {
	name: "lfpn_1_moudle_cpm_3_3/bn"
	type: "BatchNorm"
	bottom: "lfpn_1_moudle_cpm_3_3"
	top: "lfpn_1_moudle_cpm_3_3"
	param {
		lr_mult: 0
		decay_mult: 0
	}
	param {
		lr_mult: 0
		decay_mult: 0
	}
	param {
		lr_mult: 0
		decay_mult: 0
	}
}
layer {
	name: "lfpn_1_moudle_cpm_3_3/scale"
	type: "Scale"
	bottom: "lfpn_1_moudle_cpm_3_3"
	top: "lfpn_1_moudle_cpm_3_3"
	param {
		lr_mult: 1.0
		decay_mult: 0.0
	}
	param {
		lr_mult: 2.0
		decay_mult: 0.0
	}
	scale_param {
		filler {
			value: 1
		}
		bias_term: true
		bias_filler {
			value: 0
		}
	}
}
layer {
	name: "lfpn_1_moudle_cpm_3_3/relu"
	type: "ReLU"
	bottom: "lfpn_1_moudle_cpm_3_3"
	top: "lfpn_1_moudle_cpm_3_3"
}
layer{
	name: "lfpn_1_moudle_cpm_3_3_one_channel"
	type: "Convolution"
	bottom: "lfpn_1_moudle_cpm_3_3"
	top: "lfpn_1_moudle_cpm_3_3_one_channel"
	param {
		lr_mult: 1
		decay_mult: 1
	}
	convolution_param {
		num_output: 128
		kernel_size: 1
		stride: 1
		weight_filler {
			type: "msra"
		}
		bias_term: false
	}
}
layer {
	name: "lfpn_1_moudle_cpm_3_3_one_channel/bn"
	type: "BatchNorm"
	bottom: "lfpn_1_moudle_cpm_3_3_one_channel"
	top: "lfpn_1_moudle_cpm_3_3_one_channel"
	param {
		lr_mult: 0
		decay_mult: 0
	}
	param {
		lr_mult: 0
		decay_mult: 0
	}
	param {
		lr_mult: 0
		decay_mult: 0
	}
}
layer {
	name: "lfpn_1_moudle_cpm_3_3_one_channel/scale"
	type: "Scale"
	bottom: "lfpn_1_moudle_cpm_3_3_one_channel"
	top: "lfpn_1_moudle_cpm_3_3_one_channel"
	param {
		lr_mult: 1.0
		decay_mult: 0.0
	}
	param {
		lr_mult: 2.0
		decay_mult: 0.0
	}
	scale_param {
		filler {
			value: 1
		}
		bias_term: true
		bias_filler {
			value: 0
		}
	}
}
layer {
	name: "lfpn_1_moudle_cpm_3_3_one_channel/relu"
	type: "ReLU"
	bottom: "lfpn_1_moudle_cpm_3_3_one_channel"
	top: "lfpn_1_moudle_cpm_3_3_one_channel"
}
#####
layer{
	name: "lfpn_1_moudle_cpm_3_3_two_channel"
	type: "Convolution"
	bottom: "lfpn_1_moudle_cpm_3_3"
	top: "lfpn_1_moudle_cpm_3_3_two_channel"
	param {
		lr_mult: 1
		decay_mult: 1
	}
	convolution_param {
		num_output: 128
		kernel_size: 1
		stride: 1
		weight_filler {
			type: "msra"
		}
		bias_term: false
	}
}
layer {
	name: "lfpn_1_moudle_cpm_3_3_two_channel/bn"
	type: "BatchNorm"
	bottom: "lfpn_1_moudle_cpm_3_3_two_channel"
	top: "lfpn_1_moudle_cpm_3_3_two_channel"
	param {
		lr_mult: 0
		decay_mult: 0
	}
	param {
		lr_mult: 0
		decay_mult: 0
	}
	param {
		lr_mult: 0
		decay_mult: 0
	}
}
layer {
	name: "lfpn_1_moudle_cpm_3_3_two_channel/scale"
	type: "Scale"
	bottom: "lfpn_1_moudle_cpm_3_3_two_channel"
	top: "lfpn_1_moudle_cpm_3_3_two_channel"
	param {
		lr_mult: 1.0
		decay_mult: 0.0
	}
	param {
		lr_mult: 2.0
		decay_mult: 0.0
	}
	scale_param {
		filler {
			value: 1
		}
		bias_term: true
		bias_filler {
			value: 0
		}
	}
}
layer {
	name: "lfpn_1_moudle_cpm_3_3_two_channel/relu"
	type: "ReLU"
	bottom: "lfpn_1_moudle_cpm_3_3_two_channel"
	top: "lfpn_1_moudle_cpm_3_3_two_channel"
}

layer {
	name: "dectction_moudle_one"
	type: "Concat"
	bottom: "lfpn_1_moudle_cpm_3_3_one_channel"
	bottom: "lfpn_1_moudle_cpm_3_3_two_channel"
	top: "dectction_moudle_one"
}
#######################################################################
#                             modeule two                             #
#######################################################################
#################context moudle####################
layer{
	name: "lfpn_2_moudle_cpm_4_3"
	type: "Convolution"
	bottom: "conv11_1_block2"
	top: "lfpn_2_moudle_cpm_4_3"
	param {
		lr_mult: 1
		decay_mult: 1
	}
	convolution_param {
		num_output: 256
		bias_term: false
		kernel_size: 3
		group: 256
		pad: 1
		weight_filler {
			type: "msra"
		}
	}
}
layer {
	name: "lfpn_2_moudle_cpm_4_3/bn"
	type: "BatchNorm"
	bottom: "lfpn_2_moudle_cpm_4_3"
	top: "lfpn_2_moudle_cpm_4_3"
	param {
		lr_mult: 0
		decay_mult: 0
	}
	param {
		lr_mult: 0
		decay_mult: 0
	}
	param {
		lr_mult: 0
		decay_mult: 0
	}
}
layer {
	name: "lfpn_2_moudle_cpm_4_3/scale"
	type: "Scale"
	bottom: "lfpn_2_moudle_cpm_4_3"
	top: "lfpn_2_moudle_cpm_4_3"
	param {
		lr_mult: 1.0
		decay_mult: 0.0
	}
	param {
		lr_mult: 2.0
		decay_mult: 0.0
	}
	scale_param {
		filler {
			value: 1
		}
		bias_term: true
		bias_filler {
			value: 0
		}
	}
}
layer {
	name: "lfpn_2_moudle_cpm_4_3/relu"
	type: "ReLU"
	bottom: "lfpn_2_moudle_cpm_4_3"
	top: "lfpn_2_moudle_cpm_4_3"
}
layer{
	name: "lfpn_2_moudle_cpm_4_3_one_channel"
	type: "Convolution"
	bottom: "lfpn_2_moudle_cpm_4_3"
	top: "lfpn_2_moudle_cpm_4_3_one_channel"
	param {
		lr_mult: 1
		decay_mult: 1
	}
	convolution_param {
		num_output: 128
		kernel_size: 1
		stride: 1
		weight_filler {
			type: "msra"
		}
		bias_term: false
	}
}
layer {
	name: "lfpn_2_moudle_cpm_4_3_one_channel/bn"
	type: "BatchNorm"
	bottom: "lfpn_2_moudle_cpm_4_3_one_channel"
	top: "lfpn_2_moudle_cpm_4_3_one_channel"
	param {
		lr_mult: 0
		decay_mult: 0
	}
	param {
		lr_mult: 0
		decay_mult: 0
	}
	param {
		lr_mult: 0
		decay_mult: 0
	}
}
layer {
	name: "lfpn_2_moudle_cpm_4_3_one_channel/scale"
	type: "Scale"
	bottom: "lfpn_2_moudle_cpm_4_3_one_channel"
	top: "lfpn_2_moudle_cpm_4_3_one_channel"
	param {
		lr_mult: 1.0
		decay_mult: 0.0
	}
	param {
		lr_mult: 2.0
		decay_mult: 0.0
	}
	scale_param {
		filler {
			value: 1
		}
		bias_term: true
		bias_filler {
			value: 0
		}
	}
}
layer {
	name: "lfpn_2_moudle_cpm_4_3_one_channel/relu"
	type: "ReLU"
	bottom: "lfpn_2_moudle_cpm_4_3_one_channel"
	top: "lfpn_2_moudle_cpm_4_3_one_channel"
}
#####
layer{
	name: "lfpn_2_moudle_cpm_4_3_two_channel"
	type: "Convolution"
	bottom: "lfpn_2_moudle_cpm_4_3"
	top: "lfpn_2_moudle_cpm_4_3_two_channel"
	param {
		lr_mult: 1
		decay_mult: 1
	}
	convolution_param {
		num_output: 128
		kernel_size: 1
		stride: 1
		weight_filler {
			type: "msra"
		}
		bias_term: false
	}
}
layer {
	name: "lfpn_2_moudle_cpm_4_3_two_channel/bn"
	type: "BatchNorm"
	bottom: "lfpn_2_moudle_cpm_4_3_two_channel"
	top: "lfpn_2_moudle_cpm_4_3_two_channel"
	param {
		lr_mult: 0
		decay_mult: 0
	}
	param {
		lr_mult: 0
		decay_mult: 0
	}
	param {
		lr_mult: 0
		decay_mult: 0
	}
}
layer {
	name: "lfpn_2_moudle_cpm_4_3_two_channel/scale"
	type: "Scale"
	bottom: "lfpn_2_moudle_cpm_4_3_two_channel"
	top: "lfpn_2_moudle_cpm_4_3_two_channel"
	param {
		lr_mult: 1.0
		decay_mult: 0.0
	}
	param {
		lr_mult: 2.0
		decay_mult: 0.0
	}
	scale_param {
		filler {
			value: 1
		}
		bias_term: true
		bias_filler {
			value: 0
		}
	}
}
layer {
	name: "lfpn_2_moudle_cpm_4_3_two_channel/relu"
	type: "ReLU"
	bottom: "lfpn_2_moudle_cpm_4_3_two_channel"
	top: "lfpn_2_moudle_cpm_4_3_two_channel"
}

layer {
	name: "dectction_moudle_two"
	type: "Concat"
	bottom: "lfpn_2_moudle_cpm_4_3_one_channel"
	bottom: "lfpn_2_moudle_cpm_4_3_two_channel"
	top: "dectction_moudle_two"
}
#######################################################################
#                             modeule three                           #
#######################################################################
#################context moudle####################
layer{
	name: "cpm_moudle_conv13_block3"
	type: "Convolution"
	bottom: "conv13_block3"
	top: "cpm_moudle_conv13_block3"
	param {
		lr_mult: 1
		decay_mult: 1
	}
	convolution_param {
		num_output: 256
		bias_term: false
		kernel_size: 3
		#group: 256
		pad: 1
		weight_filler {
			type: "msra"
		}
	}
}
layer {
	name: "cpm_moudle_conv13_block3/bn"
	type: "BatchNorm"
	bottom: "cpm_moudle_conv13_block3"
	top: "cpm_moudle_conv13_block3"
	param {
		lr_mult: 0
		decay_mult: 0
	}
	param {
		lr_mult: 0
		decay_mult: 0
	}
	param {
		lr_mult: 0
		decay_mult: 0
	}
}
layer {
	name: "cpm_moudle_conv13_block3/scale"
	type: "Scale"
	bottom: "cpm_moudle_conv13_block3"
	top: "cpm_moudle_conv13_block3"
	param {
		lr_mult: 1.0
		decay_mult: 0.0
	}
	param {
		lr_mult: 2.0
		decay_mult: 0.0
	}
	scale_param {
		filler {
			value: 1
		}
		bias_term: true
		bias_filler {
			value: 0
		}
	}
}
layer {
	name: "cpm_moudle_conv13_block3/relu"
	type: "ReLU"
	bottom: "cpm_moudle_conv13_block3"
	top: "cpm_moudle_conv13_block3"
}
layer{
	name: "cpm_moudle_conv13_block3_one_channel"
	type: "Convolution"
	bottom: "cpm_moudle_conv13_block3"
	top: "cpm_moudle_conv13_block3_one_channel"
	param {
		lr_mult: 1
		decay_mult: 1
	}
	convolution_param {
		num_output: 128
		kernel_size: 1
		stride: 1
		weight_filler {
			type: "msra"
		}
		bias_term: false
	}
}
layer {
	name: "cpm_moudle_conv13_block3_one_channel/bn"
	type: "BatchNorm"
	bottom: "cpm_moudle_conv13_block3_one_channel"
	top: "cpm_moudle_conv13_block3_one_channel"
	param {
		lr_mult: 0
		decay_mult: 0
	}
	param {
		lr_mult: 0
		decay_mult: 0
	}
	param {
		lr_mult: 0
		decay_mult: 0
	}
}
layer {
	name: "cpm_moudle_conv13_block3_one_channel/scale"
	type: "Scale"
	bottom: "cpm_moudle_conv13_block3_one_channel"
	top: "cpm_moudle_conv13_block3_one_channel"
	param {
		lr_mult: 1.0
		decay_mult: 0.0
	}
	param {
		lr_mult: 2.0
		decay_mult: 0.0
	}
	scale_param {
		filler {
			value: 1
		}
		bias_term: true
		bias_filler {
			value: 0
		}
	}
}
layer {
	name: "cpm_moudle_conv13_block3_one_channel/relu"
	type: "ReLU"
	bottom: "cpm_moudle_conv13_block3_one_channel"
	top: "cpm_moudle_conv13_block3_one_channel"
}
#####
layer{
	name: "cpm_moudle_conv13_block3_two_channel"
	type: "Convolution"
	bottom: "cpm_moudle_conv13_block3"
	top: "cpm_moudle_conv13_block3_two_channel"
	param {
		lr_mult: 1
		decay_mult: 1
	}
	convolution_param {
		num_output: 128
		kernel_size: 1
		stride: 1
		weight_filler {
			type: "msra"
		}
		bias_term: false
	}
}
layer {
	name: "cpm_moudle_conv13_block3_two_channel/bn"
	type: "BatchNorm"
	bottom: "cpm_moudle_conv13_block3_two_channel"
	top: "cpm_moudle_conv13_block3_two_channel"
	param {
		lr_mult: 0
		decay_mult: 0
	}
	param {
		lr_mult: 0
		decay_mult: 0
	}
	param {
		lr_mult: 0
		decay_mult: 0
	}
}
layer {
	name: "cpm_moudle_conv13_block3_two_channel/scale"
	type: "Scale"
	bottom: "cpm_moudle_conv13_block3_two_channel"
	top: "cpm_moudle_conv13_block3_two_channel"
	param {
		lr_mult: 1.0
		decay_mult: 0.0
	}
	param {
		lr_mult: 2.0
		decay_mult: 0.0
	}
	scale_param {
		filler {
			value: 1
		}
		bias_term: true
		bias_filler {
			value: 0
		}
	}
}
layer {
	name: "cpm_moudle_conv13_block3_two_channel/relu"
	type: "ReLU"
	bottom: "cpm_moudle_conv13_block3_two_channel"
	top: "cpm_moudle_conv13_block3_two_channel"
}

layer {
	name: "dectction_moudle_three"
	type: "Concat"
	bottom: "cpm_moudle_conv13_block3_one_channel"
	bottom: "cpm_moudle_conv13_block3_two_channel"
	top: "dectction_moudle_three"
}
#######################################################################
#                             modeule four                            #
#######################################################################
#################context moudle####################
layer{
	name: "cpm_moudle_conv14_2"
	type: "Convolution"
	bottom: "conv14_2"
	top: "cpm_moudle_conv14_2"
	param {
		lr_mult: 1
		decay_mult: 1
	}
	convolution_param {
		num_output: 512
		kernel_size: 3
		pad: 1
		group: 512
		weight_filler {
			type: "msra"
		}
		bias_term: false
	}
}
layer {
	name: "cpm_moudle_conv14_2/bn"
	type: "BatchNorm"
	bottom: "cpm_moudle_conv14_2"
	top: "cpm_moudle_conv14_2"
	param {
		lr_mult: 0
		decay_mult: 0
	}
	param {
		lr_mult: 0
		decay_mult: 0
	}
	param {
		lr_mult: 0
		decay_mult: 0
	}
}
layer {
	name: "cpm_moudle_conv14_2/scale"
	type: "Scale"
	bottom: "cpm_moudle_conv14_2"
	top: "cpm_moudle_conv14_2"
	param {
		lr_mult: 1.0
		decay_mult: 0.0
	}
	param {
		lr_mult: 2.0
		decay_mult: 0.0
	}
	scale_param {
		filler {
			value: 1
		}
		bias_term: true
		bias_filler {
			value: 0
		}
	}
}
layer {
	name: "cpm_moudle_conv14_2/relu"
	type: "ReLU"
	bottom: "cpm_moudle_conv14_2"
	top: "cpm_moudle_conv14_2"
}
layer{
	name: "cpm_moudle_conv14_2_one_channel"
	type: "Convolution"
	bottom: "cpm_moudle_conv14_2"
	top: "cpm_moudle_conv14_2_one_channel"
	param {
		lr_mult: 1
		decay_mult: 1
	}
	convolution_param {
		num_output: 256
		kernel_size: 1
		stride: 1
		weight_filler {
			type: "msra"
		}
		bias_term: false
	}
}
layer {
	name: "cpm_moudle_conv14_2_one_channel/bn"
	type: "BatchNorm"
	bottom: "cpm_moudle_conv14_2_one_channel"
	top: "cpm_moudle_conv14_2_one_channel"
	param {
		lr_mult: 0
		decay_mult: 0
	}
	param {
		lr_mult: 0
		decay_mult: 0
	}
	param {
		lr_mult: 0
		decay_mult: 0
	}
}
layer {
	name: "cpm_moudle_conv14_2_one_channel/scale"
	type: "Scale"
	bottom: "cpm_moudle_conv14_2_one_channel"
	top: "cpm_moudle_conv14_2_one_channel"
	param {
		lr_mult: 1.0
		decay_mult: 0.0
	}
	param {
		lr_mult: 2.0
		decay_mult: 0.0
	}
	scale_param {
		filler {
			value: 1
		}
		bias_term: true
		bias_filler {
			value: 0
		}
	}
}
layer {
	name: "cpm_moudle_conv14_2_one_channel/relu"
	type: "ReLU"
	bottom: "cpm_moudle_conv14_2_one_channel"
	top: "cpm_moudle_conv14_2_one_channel"
}
#####
layer{
	name: "cpm_moudle_conv14_2_two_channel"
	type: "Convolution"
	bottom: "cpm_moudle_conv14_2"
	top: "cpm_moudle_conv14_2_two_channel"
	param {
		lr_mult: 1
		decay_mult: 1
	}
	convolution_param {
		num_output: 256
		kernel_size: 1
		stride: 1
		weight_filler {
			type: "msra"
		}
		bias_term: false
	}
}
layer {
	name: "cpm_moudle_conv14_2_two_channel/bn"
	type: "BatchNorm"
	bottom: "cpm_moudle_conv14_2_two_channel"
	top: "cpm_moudle_conv14_2_two_channel"
	param {
		lr_mult: 0
		decay_mult: 0
	}
	param {
		lr_mult: 0
		decay_mult: 0
	}
	param {
		lr_mult: 0
		decay_mult: 0
	}
}
layer {
	name: "cpm_moudle_conv14_2_two_channel/scale"
	type: "Scale"
	bottom: "cpm_moudle_conv14_2_two_channel"
	top: "cpm_moudle_conv14_2_two_channel"
	param {
		lr_mult: 1.0
		decay_mult: 0.0
	}
	param {
		lr_mult: 2.0
		decay_mult: 0.0
	}
	scale_param {
		filler {
			value: 1
		}
		bias_term: true
		bias_filler {
			value: 0
		}
	}
}
layer {
	name: "cpm_moudle_conv14_2_two_channel/relu"
	type: "ReLU"
	bottom: "cpm_moudle_conv14_2_two_channel"
	top: "cpm_moudle_conv14_2_two_channel"
}

layer {
	name: "dectction_moudle_four"
	type: "Concat"
	bottom: "cpm_moudle_conv14_2_one_channel"
	bottom: "cpm_moudle_conv14_2_two_channel"
	top: "dectction_moudle_four"
}
#######################################################################
#                             modeule five                           #
#######################################################################
#################context moudle####################
layer{
	name: "cpm_moudle_conv16_2"
	type: "Convolution"
	bottom: "conv15_2"
	top: "cpm_moudle_conv16_2"
	param {
		lr_mult: 1
		decay_mult: 1
	}
	convolution_param {
		num_output: 256
		kernel_size: 1
		stride: 1
		weight_filler {
			type: "msra"
		}
		bias_term: false
	}
}
layer {
	name: "cpm_moudle_conv16_2/bn"
	type: "BatchNorm"
	bottom: "cpm_moudle_conv16_2"
	top: "cpm_moudle_conv16_2"
	param {
		lr_mult: 0
		decay_mult: 0
	}
	param {
		lr_mult: 0
		decay_mult: 0
	}
	param {
		lr_mult: 0
		decay_mult: 0
	}
}
layer {
	name: "cpm_moudle_conv16_2/scale"
	type: "Scale"
	bottom: "cpm_moudle_conv16_2"
	top: "cpm_moudle_conv16_2"
	param {
		lr_mult: 1.0
		decay_mult: 0.0
	}
	param {
		lr_mult: 2.0
		decay_mult: 0.0
	}
	scale_param {
		filler {
			value: 1
		}
		bias_term: true
		bias_filler {
			value: 0
		}
	}
}
layer {
	name: "cpm_moudle_conv16_2/relu"
	type: "ReLU"
	bottom: "cpm_moudle_conv16_2"
	top: "cpm_moudle_conv16_2"
}
layer{
	name: "cpm_moudle_conv16_2_one_channel"
	type: "Convolution"
	bottom: "cpm_moudle_conv16_2"
	top: "cpm_moudle_conv16_2_one_channel"
	param {
		lr_mult: 1
		decay_mult: 1
	}
	convolution_param {
		num_output: 128
		kernel_size: 1
		stride: 1
		weight_filler {
			type: "msra"
		}
		bias_term: false
	}
}
layer {
	name: "cpm_moudle_conv16_2_one_channel/bn"
	type: "BatchNorm"
	bottom: "cpm_moudle_conv16_2_one_channel"
	top: "cpm_moudle_conv16_2_one_channel"
	param {
		lr_mult: 0
		decay_mult: 0
	}
	param {
		lr_mult: 0
		decay_mult: 0
	}
	param {
		lr_mult: 0
		decay_mult: 0
	}
}
layer {
	name: "cpm_moudle_conv16_2_one_channel/scale"
	type: "Scale"
	bottom: "cpm_moudle_conv16_2_one_channel"
	top: "cpm_moudle_conv16_2_one_channel"
	param {
		lr_mult: 1.0
		decay_mult: 0.0
	}
	param {
		lr_mult: 2.0
		decay_mult: 0.0
	}
	scale_param {
		filler {
			value: 1
		}
		bias_term: true
		bias_filler {
			value: 0
		}
	}
}
layer {
	name: "cpm_moudle_conv16_2_one_channel/relu"
	type: "ReLU"
	bottom: "cpm_moudle_conv16_2_one_channel"
	top: "cpm_moudle_conv16_2_one_channel"
}
#####
layer{
	name: "cpm_moudle_conv16_2_two_channel"
	type: "Convolution"
	bottom: "cpm_moudle_conv16_2"
	top: "cpm_moudle_conv16_2_two_channel"
	param {
		lr_mult: 1
		decay_mult: 1
	}
	convolution_param {
		num_output: 128
		kernel_size: 1
		stride: 1
		weight_filler {
			type: "msra"
		}
		bias_term: false
	}
}
layer {
	name: "cpm_moudle_conv16_2_two_channel/bn"
	type: "BatchNorm"
	bottom: "cpm_moudle_conv16_2_two_channel"
	top: "cpm_moudle_conv16_2_two_channel"
	param {
		lr_mult: 0
		decay_mult: 0
	}
	param {
		lr_mult: 0
		decay_mult: 0
	}
	param {
		lr_mult: 0
		decay_mult: 0
	}
}
layer {
	name: "cpm_moudle_conv16_2_two_channel/scale"
	type: "Scale"
	bottom: "cpm_moudle_conv16_2_two_channel"
	top: "cpm_moudle_conv16_2_two_channel"
	param {
		lr_mult: 1.0
		decay_mult: 0.0
	}
	param {
		lr_mult: 2.0
		decay_mult: 0.0
	}
	scale_param {
		filler {
			value: 1
		}
		bias_term: true
		bias_filler {
			value: 0
		}
	}
}
layer {
	name: "cpm_moudle_conv16_2_two_channel/relu"
	type: "ReLU"
	bottom: "cpm_moudle_conv16_2_two_channel"
	top: "cpm_moudle_conv16_2_two_channel"
}

layer {
	name: "dectction_moudle_five"
	type: "Concat"
	bottom: "cpm_moudle_conv16_2_one_channel"
	bottom: "cpm_moudle_conv16_2_two_channel"
	top: "dectction_moudle_five"
}
#######################################################################
#                             modeule six                            #
#######################################################################
#################context moudle####################
layer{
	name: "cpm_moudle_conv17_2"
	type: "Convolution"
	bottom: "conv16_2"
	top: "cpm_moudle_conv17_2"
	param {
		lr_mult: 1
		decay_mult: 1
	}
	convolution_param {
		num_output: 256
		kernel_size: 1
		stride: 1
		weight_filler {
			type: "msra"
		}
		bias_term: false
	}
}
layer {
	name: "cpm_moudle_conv17_2/bn"
	type: "BatchNorm"
	bottom: "cpm_moudle_conv17_2"
	top: "cpm_moudle_conv17_2"
	param {
		lr_mult: 0
		decay_mult: 0
	}
	param {
		lr_mult: 0
		decay_mult: 0
	}
	param {
		lr_mult: 0
		decay_mult: 0
	}
}
layer {
	name: "cpm_moudle_conv17_2/scale"
	type: "Scale"
	bottom: "cpm_moudle_conv17_2"
	top: "cpm_moudle_conv17_2"
	param {
		lr_mult: 1.0
		decay_mult: 0.0
	}
	param {
		lr_mult: 2.0
		decay_mult: 0.0
	}
	scale_param {
		filler {
			value: 1
		}
		bias_term: true
		bias_filler {
			value: 0
		}
	}
}
layer {
	name: "cpm_moudle_conv17_2/relu"
	type: "ReLU"
	bottom: "cpm_moudle_conv17_2"
	top: "cpm_moudle_conv17_2"
}
layer{
	name: "cpm_moudle_conv17_2_one_channel"
	type: "Convolution"
	bottom: "cpm_moudle_conv17_2"
	top: "cpm_moudle_conv17_2_one_channel"
	param {
		lr_mult: 1
		decay_mult: 1
	}
	convolution_param {
		num_output: 128
		kernel_size: 1
		stride: 1
		weight_filler {
			type: "msra"
		}
		bias_term: false
	}
}
layer {
	name: "cpm_moudle_conv17_2_one_channel/bn"
	type: "BatchNorm"
	bottom: "cpm_moudle_conv17_2_one_channel"
	top: "cpm_moudle_conv17_2_one_channel"
	param {
		lr_mult: 0
		decay_mult: 0
	}
	param {
		lr_mult: 0
		decay_mult: 0
	}
	param {
		lr_mult: 0
		decay_mult: 0
	}
}
layer {
	name: "cpm_moudle_conv17_2_one_channel/scale"
	type: "Scale"
	bottom: "cpm_moudle_conv17_2_one_channel"
	top: "cpm_moudle_conv17_2_one_channel"
	param {
		lr_mult: 1.0
		decay_mult: 0.0
	}
	param {
		lr_mult: 2.0
		decay_mult: 0.0
	}
	scale_param {
		filler {
			value: 1
		}
		bias_term: true
		bias_filler {
			value: 0
		}
	}
}
layer {
	name: "cpm_moudle_conv17_2_one_channel/relu"
	type: "ReLU"
	bottom: "cpm_moudle_conv17_2_one_channel"
	top: "cpm_moudle_conv17_2_one_channel"
}
#####
layer{
	name: "cpm_moudle_conv17_2_two_channel"
	type: "Convolution"
	bottom: "cpm_moudle_conv17_2"
	top: "cpm_moudle_conv17_2_two_channel"
	param {
		lr_mult: 1
		decay_mult: 1
	}
	convolution_param {
		num_output: 128
		kernel_size: 1
		stride: 1
		weight_filler {
			type: "msra"
		}
		bias_term: false
	}
}
layer {
	name: "cpm_moudle_conv17_2_two_channel/bn"
	type: "BatchNorm"
	bottom: "cpm_moudle_conv17_2_two_channel"
	top: "cpm_moudle_conv17_2_two_channel"
	param {
		lr_mult: 0
		decay_mult: 0
	}
	param {
		lr_mult: 0
		decay_mult: 0
	}
	param {
		lr_mult: 0
		decay_mult: 0
	}
}
layer {
	name: "cpm_moudle_conv17_2_two_channel/scale"
	type: "Scale"
	bottom: "cpm_moudle_conv17_2_two_channel"
	top: "cpm_moudle_conv17_2_two_channel"
	param {
		lr_mult: 1.0
		decay_mult: 0.0
	}
	param {
		lr_mult: 2.0
		decay_mult: 0.0
	}
	scale_param {
		filler {
			value: 1
		}
		bias_term: true
		bias_filler {
			value: 0
		}
	}
}
layer {
	name: "cpm_moudle_conv17_2_two_channel/relu"
	type: "ReLU"
	bottom: "cpm_moudle_conv17_2_two_channel"
	top: "cpm_moudle_conv17_2_two_channel"
}

layer {
	name: "dectction_moudle_six"
	type: "Concat"
	bottom: "cpm_moudle_conv17_2_one_channel"
	bottom: "cpm_moudle_conv17_2_two_channel"
	top: "dectction_moudle_six"
}
#######################################################################
#                             modeule seven                           #
#######################################################################
#################context moudle####################
layer{
	name: "cpm_moudle_seven"
	type: "Convolution"
	bottom: "conv17_2"
	top: "cpm_moudle_seven"
	param {
		lr_mult: 1
		decay_mult: 1
	}
	convolution_param {
		num_output: 128
		kernel_size: 1
		stride: 1
		weight_filler {
			type: "msra"
		}
		bias_term: false
	}
}
layer {
	name: "cpm_moudle_seven/bn"
	type: "BatchNorm"
	bottom: "cpm_moudle_seven"
	top: "cpm_moudle_seven"
	param {
		lr_mult: 0
		decay_mult: 0
	}
	param {
		lr_mult: 0
		decay_mult: 0
	}
	param {
		lr_mult: 0
		decay_mult: 0
	}
}
layer {
	name: "cpm_moudle_seven/scale"
	type: "Scale"
	bottom: "cpm_moudle_seven"
	top: "cpm_moudle_seven"
	param {
		lr_mult: 1.0
		decay_mult: 0.0
	}
	param {
		lr_mult: 2.0
		decay_mult: 0.0
	}
	scale_param {
		filler {
			value: 1
		}
		bias_term: true
		bias_filler {
			value: 0
		}
	}
}
layer {
	name: "cpm_moudle_seven/relu"
	type: "ReLU"
	bottom: "cpm_moudle_seven"
	top: "cpm_moudle_seven"
}
layer{
	name: "cpm_moudle_seven_one_channel"
	type: "Convolution"
	bottom: "cpm_moudle_seven"
	top: "cpm_moudle_seven_one_channel"
	param {
		lr_mult: 1
		decay_mult: 1
	}
	convolution_param {
		num_output: 128
		kernel_size: 1
		stride: 1
		weight_filler {
			type: "msra"
		}
		bias_term: false
	}
}
layer {
	name: "cpm_moudle_seven_one_channel/bn"
	type: "BatchNorm"
	bottom: "cpm_moudle_seven_one_channel"
	top: "cpm_moudle_seven_one_channel"
	param {
		lr_mult: 0
		decay_mult: 0
	}
	param {
		lr_mult: 0
		decay_mult: 0
	}
	param {
		lr_mult: 0
		decay_mult: 0
	}
}
layer {
	name: "cpm_moudle_seven_one_channel/scale"
	type: "Scale"
	bottom: "cpm_moudle_seven_one_channel"
	top: "cpm_moudle_seven_one_channel"
	param {
		lr_mult: 1.0
		decay_mult: 0.0
	}
	param {
		lr_mult: 2.0
		decay_mult: 0.0
	}
	scale_param {
		filler {
			value: 1
		}
		bias_term: true
		bias_filler {
			value: 0
		}
	}
}
layer {
	name: "cpm_moudle_seven_one_channel/relu"
	type: "ReLU"
	bottom: "cpm_moudle_seven_one_channel"
	top: "cpm_moudle_seven_one_channel"
}
#####
layer{
	name: "cpm_moudle_seven_two_channel"
	type: "Convolution"
	bottom: "cpm_moudle_seven"
	top: "cpm_moudle_seven_two_channel"
	param {
		lr_mult: 1
		decay_mult: 1
	}
	convolution_param {
		num_output: 128
		kernel_size: 1
		stride: 1
		weight_filler {
			type: "msra"
		}
		bias_term: false
	}
}
layer {
	name: "cpm_moudle_seven_two_channel/bn"
	type: "BatchNorm"
	bottom: "cpm_moudle_seven_two_channel"
	top: "cpm_moudle_seven_two_channel"
	param {
		lr_mult: 0
		decay_mult: 0
	}
	param {
		lr_mult: 0
		decay_mult: 0
	}
	param {
		lr_mult: 0
		decay_mult: 0
	}
}
layer {
	name: "cpm_moudle_seven_two_channel/scale"
	type: "Scale"
	bottom: "cpm_moudle_seven_two_channel"
	top: "cpm_moudle_seven_two_channel"
	param {
		lr_mult: 1.0
		decay_mult: 0.0
	}
	param {
		lr_mult: 2.0
		decay_mult: 0.0
	}
	scale_param {
		filler {
			value: 1
		}
		bias_term: true
		bias_filler {
			value: 0
		}
	}
}
layer {
	name: "cpm_moudle_seven_two_channel/relu"
	type: "ReLU"
	bottom: "cpm_moudle_seven_two_channel"
	top: "cpm_moudle_seven_two_channel"
}

layer {
	name: "dectction_moudle_seven"
	type: "Concat"
	bottom: "cpm_moudle_seven_one_channel"
	bottom: "cpm_moudle_seven_two_channel"
	top: "dectction_moudle_seven"
}