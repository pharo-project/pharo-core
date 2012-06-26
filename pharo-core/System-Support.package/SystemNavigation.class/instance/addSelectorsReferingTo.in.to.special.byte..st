message sends
addSelectorsReferingTo: aSymbol in: class to: sortedSenders special: special byte: byte 
	{class. class class} do: [:behavior| (behavior 
		thoroughWhichSelectorsReferTo: aSymbol
		special: special
		byte: byte) do: [ :sel | 
			sortedSenders add: (self createMethodNamed: sel realParent: behavior) ]]