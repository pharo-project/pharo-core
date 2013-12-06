packageSearchAccept: string
	| aString |

	aString := string ifNil: [ '' ].
	packagePattern = aString asLowercase ifTrue: [ ^ self ].
	packagePattern :=  aString asLowercase.

	packageProcess ifNotNil: [ packageProcess terminate ].	
	packageProcess := [ self changed: #packageList ] fork.