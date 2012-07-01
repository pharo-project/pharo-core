accessing
fieldList 
	"Refer to the comment in Inspector|fieldList."

	object == nil ifTrue: [^Array with: 'thisContext'].
	^fieldList ifNil:[fieldList := (Array with: 'thisContext' with: 'stack top' with: 'all temp vars') , object tempNames]