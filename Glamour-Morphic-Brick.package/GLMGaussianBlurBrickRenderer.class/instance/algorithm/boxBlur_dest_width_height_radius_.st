boxBlur: scl dest: tcl width: w height: h radius: r

	1 to: scl size do: [ :i | tcl at: i put: (scl at: i) ].
	self boxBlurH: tcl dest: scl width: w height: h radius: r.
	self boxBlurT: scl dest: tcl width: w height: h radius: r
