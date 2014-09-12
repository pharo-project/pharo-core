privateDeprecateMethodFor: aMethod
	| class selector method newSelector oldArguments oldMethodName names |
	class := aMethod methodClass.
	selector := aMethod selector.
	method := aMethod.
	aMethod class = RGMethodDefinition
		ifTrue: [ method := RBMethod for: class source: method sourceCode selector: selector ].
	oldArguments := method ast arguments collect: [ :each | each token value ].
	oldMethodName := RBMethodName selector: selector arguments: oldArguments.
	names := class methodDict asOrderedCollection collect: [ :each | each selector ].
	newSelector := self chooseFrom: names title: class name , ' methods:' lines: names.
	^ RBDeprecateMethodRefactoring
		model: environment
		deprecateMethod: selector
		in: class
		using: newSelector