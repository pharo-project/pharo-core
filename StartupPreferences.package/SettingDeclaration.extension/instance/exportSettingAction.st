*StartupPreferences
exportSettingAction
	| targetSymbol currentValue |
	
	targetSymbol := self target isSymbol
						ifTrue: [ self target ]
						ifFalse: [ self target name asSymbol ].
						
	currentValue := self targetSelector
						ifNil: [ (Smalltalk at: targetSymbol) perform: self getSelector ]
						ifNotNil: [:s | ((Smalltalk at: targetSymbol) perform: s) perform: self getSelector].
	
	^ (self hasDefault not or: [ (self default = currentValue) not ])
		ifTrue: [ 
			"The setting has changed, or there is no default value so we export it"
			"I assume here that the receiver is always a class"
			
			StartupAction 
				name: self label 
				code: (String streamContents: [:s |
							self targetSelector ifNotNil: [ s << '(' ].
							s << '(Smalltalk at: '.
							targetSymbol asSymbol printOn: s.
							self targetSelector ifNotNil: [:ts | s << ') perform: '. ts printOn: s ].
							s << ') perform: '.
							self setSelector asSymbol printOn: s.
							s << ' with: ('.
							currentValue storeOn: s.
							s <<')' ])
				runOnce: true ]
		ifFalse: [ "We do nothing" nil ]