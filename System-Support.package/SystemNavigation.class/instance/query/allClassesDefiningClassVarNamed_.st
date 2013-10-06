allClassesDefiningClassVarNamed: aString  
	"Answer an Array of all classes that define the class variables named aString."

	| aCollection |
	aCollection := ReadWriteStream on: Array new.
	self allClassesDo: [:class | (class hasClassVarNamed: aString) ifTrue: [aCollection nextPut: class]].
	^ aCollection contents