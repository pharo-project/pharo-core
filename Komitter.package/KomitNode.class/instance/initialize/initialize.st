initialize

	silent := false.
	super initialize.
	
	self whenSelectedChanged: [ :aBoolean | self content selected: aBoolean ].
	self whenIsExpandedChanged: [ :aBoolean | self content expanded: aBoolean ].
	
	self whenContentChanged: [ :c |
		self silentWhile: [ self selected: c selected ].
		self isExpanded: c expanded ]