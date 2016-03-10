dataForQAR

	^ super dataForQAR
		at: #critic put: critic dataForQAREntityless;
		yourself