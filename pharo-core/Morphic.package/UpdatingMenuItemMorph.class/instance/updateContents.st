world
updateContents
	"Update the receiver's contents"

	| newString enablement nArgs |
	((wordingProvider isNil) or: [wordingSelector isNil]) ifTrue: [^ self].
	nArgs := wordingSelector numArgs.
	newString := nArgs = 0
		ifTrue:
			[wordingProvider perform: wordingSelector]
		ifFalse:
			[(nArgs = 1 and: [wordingArgument notNil])
				ifTrue:
					[wordingProvider perform: wordingSelector with: wordingArgument]
				ifFalse:
					[nArgs == arguments size ifTrue:
						[wordingProvider perform: wordingSelector withArguments: arguments]]].
	newString = (self contentString ifNil: [ contents ])
		ifFalse: [self contents: newString].
	enablementSelector ifNotNil:
		[(enablement := self enablement) == isEnabled 
			ifFalse:	[self isEnabled: enablement]]