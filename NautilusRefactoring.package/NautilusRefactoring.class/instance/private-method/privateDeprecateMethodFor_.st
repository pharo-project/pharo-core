privateDeprecateMethodFor: aMethod
	| class selector method newSelector  names |
	class := aMethod methodClass.
	selector := aMethod selector.
	method := aMethod.
	aMethod class = RGMethodDefinition
		ifTrue: [ method := RBMethod for: class source: method sourceCode selector: selector ].
	names := class methods asOrderedCollection collect: [ :each | each selector ].
	newSelector := self chooseFrom: names title: class name , ' methods:' lines: names.
	^ RBDeprecateMethodRefactoring
		model: environment
		deprecateMethod: selector
		in: class
		using: newSelector