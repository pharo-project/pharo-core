hasLinks
	^ self example afterArguments notEmpty
		and: [ Smalltalk hasClassNamed: #MetaLink ]