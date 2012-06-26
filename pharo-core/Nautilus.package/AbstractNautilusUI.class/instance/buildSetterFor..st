private
buildSetterFor: aString

	^ aString withFirstCharacterDownshifted, ': anObject
	
	', aString, ' := anObject'