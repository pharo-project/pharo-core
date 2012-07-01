source code area
doItReceiver

	^ self selectedClass 
		ifNil: [ nil ]
		ifNotNil: [:class | class theNonMetaClass ]