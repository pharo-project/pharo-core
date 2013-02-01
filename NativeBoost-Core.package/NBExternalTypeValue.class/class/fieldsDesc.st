fields description
fieldsDesc 
 	valueType ifNil: [ ^ #() ].
	
	^ { valueType. #value }