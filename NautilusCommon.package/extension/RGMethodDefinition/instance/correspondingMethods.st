correspondingMethods
	" retrieve methods that could be the corresponding method "

	self isTestMethod
		ifTrue: [ 
			| className selector selectors |
			selector := self selector.
			className := self methodClass name.
			(self methodClass inheritsFrom: TestCase)
				ifTrue: [ 
					| classSymbol correspondingClass tempSel correspondingSel result |
					(selector beginsWith: 'test')
						ifFalse: [ ^ {} ].
					classSymbol := (className endsWith: 'Test')
						ifTrue: [ className copyFrom: 1 to: className size - 4 ]
						ifFalse: [ className ].
					correspondingClass := self class environment at: classSymbol asSymbol ifAbsent: [ ^ {} ].
					tempSel := selector copyFrom: 5 to: selector size.
					correspondingSel := String
						streamContents: [ :stream | 
							tempSel
								doWithIndex: [ :c :i | 
									(c isUppercase and: [ i > 1 ])
										ifTrue: [ stream << $: ].
									stream << c ] ].
					correspondingSel := correspondingSel contents.
					selectors := correspondingClass selectors.
					result := selectors
						select: [ :each | each asLowercase = correspondingSel asLowercase or: [ each asLowercase = (correspondingSel , ':') asLowercase ] ].
					^ result collect: [ :each | correspondingClass >> each ] ]
				ifFalse: [ ^ {} ] ]
		ifFalse: [ ^ {self} ]