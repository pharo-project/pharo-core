morphic
doItReceiver

	^ self selectedBehavior
		ifNil: [ nil ]
		ifNotNil: [:class | class theNonMetaClass ]