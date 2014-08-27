privateDeprecateMethodFor: aMethod
	| class selector newSelector oldArguments oldMethodName names |
	class := aMethod methodClass.
	selector := aMethod selector.
	aMethod class = RGMethodDefinition
		ifTrue: [ aMethod := RBMethod for: class source: aMethod sourceCode selector: aMethod selector ].
	oldArguments := aMethod ast arguments collect: [ :each | each token value ].
	oldMethodName := RBMethodName selector: selector arguments: oldArguments.
	names := class methodDict asOrderedCollection collect: [ :each | each selector ].
	newSelector := self chooseFrom: names title: class name , ' methods:' lines: names.
	^ RBDeprecateMethodRefactoring
		model: environment
		deprecateMethod: selector
		in: class
		using: newSelector