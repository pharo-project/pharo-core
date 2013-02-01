actions
accept
 
	UsersManager default currentUser canEditCode ifFalse: [ ^ self hasUnacceptedEdits: false ].
	self acceptBasic.
	acceptAction ifNotNil: [acceptAction value: textMorph contents asText].