drawOn: aCanvas
	self checkSession.

	surface ifNil: [  ^ super drawOn: aCanvas ].

	aCanvas drawImage: surface asForm at: bounds origin.