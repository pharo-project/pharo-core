accessing
origin
	self properties 
		at: #traitSource 
		ifPresent: [ :traitMethod| ^ traitMethod methodClass ].
	^ self methodClass traitOrClassOfSelector: self selector