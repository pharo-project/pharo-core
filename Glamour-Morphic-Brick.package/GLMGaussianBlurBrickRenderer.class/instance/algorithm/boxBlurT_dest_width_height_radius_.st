boxBlurT: scl dest: tcl width: w height: h radius: mR
	|iarr r|
	
	r := (w min: h)/2 < (mR) ifTrue: [ ^ self ] ifFalse: [ mR ].
	
   iarr := 1.0 / (r+r+1).

	0 to: (w-1) do: [ :i |
		|ti li ri fv lv val|
		ti := i.
		li := ti.
		ri := ti + (r*w).
		fv := scl at: (ti+1).
		lv := scl at: (ti+(w*(h-1))+1).
		val := (r+1)*fv.
		
		0 to: (r-1) do: [ :j | val := val + (scl at:(ti+(j*w))+1) ].
		
		0 to: r do: [ :j |
			val := val + (scl at: (ri+1)) - fv.
			tcl at: (ti+1) put: ((val*iarr)).
			ri := ri + w.
			ti := ti + w ].
		
		(r+1) to: (h-r-1) do: [ :j |
			val := val + (scl at: (ri+1)) - (scl at: (li+1)).
			tcl at: (ti+1) put: ((val*iarr)).
			li := li + w.
			ri := ri + w.
			ti := ti + w ].
		
		(h-r) to: (h-1) do: [ :j |
			val := val + lv - (scl at: (li+1)).
			tcl at: (ti+1) put: ((val*iarr)).
			li := li + w.
			ti := ti + w ] 	]
