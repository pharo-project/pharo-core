selection change
removeFromSelection: aMorph
	aMorph selected ifFalse: [^false].
	aMorph selected: false.
	aMorph unhighlight.
	^ true
