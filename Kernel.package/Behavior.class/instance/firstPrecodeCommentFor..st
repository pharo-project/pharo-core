accessing method dictionary
firstPrecodeCommentFor: selector 
	"If there is a comment in the source code at the given selector that preceeds the body of the method, return it here, else return nil"
	"Behavior firstPrecodeCommentFor: #firstPrecodeCommentFor:"
	| parser source tree |
	(#(#Comment #Definition #Hierarchy ) includes: selector) ifTrue: 
		[ "Not really a selector"
		^ nil ].
	source := self 
		sourceCodeAt: selector asSymbol
		ifAbsent: [ ^ nil ].
	parser := self parserClass new.
	tree := parser 
		parse: source readStream
		class: self
		noPattern: false
		context: nil
		notifying: nil
		ifFail: [ ^ nil ].
	^ (tree comment ifNil: [ ^ nil ]) first