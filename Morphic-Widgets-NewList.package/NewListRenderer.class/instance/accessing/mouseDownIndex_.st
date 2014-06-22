mouseDownIndex: anInteger

	self allowToSelect ifFalse: [ ^ self ].

	mouseDownIndex value: anInteger