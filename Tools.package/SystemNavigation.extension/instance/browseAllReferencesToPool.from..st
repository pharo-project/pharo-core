*Tools-Browser
browseAllReferencesToPool: poolOrName from: aClass
	"Open a message list on all messages referencing the given pool"

	| pool list |
	poolOrName isString
		ifTrue: [ pool := Smalltalk globals at: poolOrName asSymbol ]
		ifFalse: [ pool := poolOrName ].
	list := self allReferencesToPool: pool from: aClass.
	^ self browseMessageList: list name: 'users of ' , poolOrName name.