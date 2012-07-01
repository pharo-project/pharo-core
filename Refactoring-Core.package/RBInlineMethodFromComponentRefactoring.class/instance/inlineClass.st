transforming
inlineClass
	| imps |
	inlineClass notNil ifTrue: [^inlineClass].
	imps := (self model allImplementorsOf: self inlineSelector) 
				asOrderedCollection.
	imps size = 1 ifTrue: [^inlineClass := imps first].
	imps isEmpty 
		ifTrue: 
			[self 
				refactoringError: 'Nobody defines a method named ' , self inlineSelector].
	inlineClass := self requestImplementorToInline: imps.
	inlineClass isNil 
		ifTrue: [self refactoringError: 'No implementor selected'].
	^inlineClass