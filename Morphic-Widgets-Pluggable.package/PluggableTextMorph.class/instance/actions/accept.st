accept
 
	UserManager default canEditCode 
		ifFalse: [ ^ self hasUnacceptedEdits: false ].
	self acceptBasic.
	acceptAction ifNotNil: [acceptAction value: textMorph contents asText].