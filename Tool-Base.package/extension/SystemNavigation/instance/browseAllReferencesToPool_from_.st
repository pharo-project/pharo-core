browseAllReferencesToPool: poolOrName from: aClass
	"Open a message list on all messages referencing the given pool"

	| pool list |
	pool := poolOrName isString
		ifTrue: [ Smalltalk globals at: poolOrName asSymbol ]
		ifFalse: [ poolOrName ].
	list := self allReferencesToPool: pool from: aClass.
	^ self browseMessageList: list name: 'users of ' , poolOrName name