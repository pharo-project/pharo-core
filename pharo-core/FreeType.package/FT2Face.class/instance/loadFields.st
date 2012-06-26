private
loadFields
	self isValid 
		ifTrue:[
			[self primLoadFields] 
			on: FT2Error
			do:[:e |
				"need to do something here"]]