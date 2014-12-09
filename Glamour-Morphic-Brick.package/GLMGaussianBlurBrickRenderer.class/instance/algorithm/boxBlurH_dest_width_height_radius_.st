boxBlurH: scl dest: tcl width: w height: h radius: mR
	|iarr r|
	
	r := (w min: h)/2 < (mR) ifTrue: [ ^ self ] ifFalse: [ mR ].
	
   iarr := 1.0 / (r+r+1).

	0 to: (h-1) do: [ :i |
		|ti li ri fv lv val|
		ti := i * w.
		li := ti.
		ri := ti + r.
		fv := scl at: (ti+1).
		lv := scl at: (ti + w).
		val := (r+1)*fv.
		0 to: (r-1) do: [ :j | val := val + (scl at: (ti+j+1)) ].
		
		0 to: r do: [ :j |
			val := val + (scl at: (ri+1)) - fv.
			tcl at: (ti+1) put: ((val*iarr)).
			ri := ri + 1.
			ti := ti + 1 ].
		
		(r+1) to: (w-r-1) do: [ :j |
			val := val + (scl at: (ri+1)) - (scl at: (li+1)).
			tcl at: (ti+1) put: ((val*iarr)).
			li := li + 1.
			ri := ri + 1.
			ti := ti + 1 ].
		
		(w-r) to: (w-1) do: [ :j |
			val := val + lv - (scl at: (li+1)).
			tcl at: (ti+1) put: ((val*iarr)).
			li := li + 1.
			ti := ti + 1 ] 	]
