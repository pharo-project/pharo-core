utilities
hasVersion: aString
	| version |
	version := self allManagers
		detect: [ :each | each ancestry ancestorString = aString ]
		ifNone: [ nil ].
	^ version notNil