filterKernelClasses
	^ KCFilterEnabled ifNil:[ KCFilterEnabled := false ]