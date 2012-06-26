as yet unclassified
searchAccept: aString
	self searchUpdate: aString.
	
	list size = 1
		ifTrue: [ ^ self accept: list first ].
	
	(list detect: [ :class| class name = aString] ifNone: [ nil])
		ifNotNilDo: [ :class| ^ self accept: class ].
		
	list ifNotEmpty: [ ^ self focusList].