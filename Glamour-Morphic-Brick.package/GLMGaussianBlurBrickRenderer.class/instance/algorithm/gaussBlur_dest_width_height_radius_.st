gaussBlur: scl dest: tcl width: w height: h radius: r
	|bxs|
	
	bxs := self boxesForGauss: r count: 3.
	self boxBlur: scl dest: tcl width: w height: h radius: (bxs first asFloat - 1)/2.
	self boxBlur: tcl dest: scl width: w height: h radius: (bxs second asFloat - 1)/2.
	self boxBlur: scl dest: tcl width: w height: h radius: (bxs third asFloat - 1)/2

