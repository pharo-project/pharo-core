as yet unclassified
commonPrefix
	| stream |
	categories isEmpty ifTrue: [^ ''].
	
	stream := String new writeStream.
	categories first withIndexDo:
		[:c :i|
		categories do:
			[:ea |
			(ea at: i ifAbsent: []) = c ifFalse: [^ stream contents]].
		stream nextPut: c].
	^ stream contents