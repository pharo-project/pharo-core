changeSourceSelectors: oldSelectorParts arguments: oldArguments
	"If this is the same number of arguments, we try a one to one replacement of selector parts and arguments. If this is not the case try to rewrite the signature as a whole, what unfortunately drops the comments within the signature."
	
	[ (oldSelectorParts size = selectorParts size and: [ oldArguments size = arguments size ])
		ifTrue: [
			oldSelectorParts with: selectorParts do: [ :old :new | 
				self addReplacement: (RBStringReplacement 
					replaceFrom: old start
					to: old stop
					with: new value) ].
			oldArguments with: arguments do: [ :old :new | 
				self addReplacement: (RBStringReplacement 
					replaceFrom: old start
					to: old stop
					with: new name) ] ]
		ifFalse: [
			self addReplacement: (RBStringReplacement
				replaceFrom: oldSelectorParts first start
				to: (oldArguments notEmpty
					ifTrue: [ oldArguments last stop ]
					ifFalse: [ oldSelectorParts last stop ])
				with: (String streamContents: [ :stream |
					selectorParts keysAndValuesDo: [ :index :part |
						index = 1 ifFalse: [ stream space ].
						stream nextPutAll: part value.
						index <= arguments size
							ifTrue: [ stream space; nextPutAll: (arguments at: index) name ] ] ])) ] ]
		on: Error
		do: [ :ex | ex return ]