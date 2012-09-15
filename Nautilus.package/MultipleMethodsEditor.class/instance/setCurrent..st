protocol
setCurrent: anEditor

	(editors includes: anEditor) ifFalse: [ ^ self ].
	current := anEditor