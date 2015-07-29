browseContext
	selectedContext ifNil: [ ^ self ]. 
	Smalltalk tools browser newOnClass: self selectedClass selector: self selectedSelector