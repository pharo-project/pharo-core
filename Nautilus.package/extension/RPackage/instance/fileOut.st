fileOut
	| internalStream |
	
	internalStream := (String new: 1000) writeStream.

	self classTags do: [ :each | 
		SystemOrganization fileOutCategory: each name on: internalStream ].	
	classExtensionSelectors keysAndValuesDo: [ :className :selectors | 
		selectors do: [ :selector | | extendedClass |
			extendedClass := Smalltalk globals classNamed: className.
			extendedClass fileOutMethod: selector on: internalStream ] ].
	
	^ FileStream writeSourceCodeFrom: internalStream baseName: self name isSt: true.