setFont 
	super setFont.  "Sets font and emphasis bits, and maybe foregroundColor"
	font installOn: bitBlt foregroundColor: foregroundColor backgroundColor: (backgroundColor ifNil: [Color lightBlue]).
	text ifNotNil:[
		baselineY := lineY + line baseline.
		destY := baselineY - font ascent].
