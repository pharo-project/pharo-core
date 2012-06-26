private-method
privateRenameMethodFor: aMethod
	| class selector oldMethodName newMethodName oldArguments argumentPermutation |
	
	class := aMethod methodClass.
	selector := aMethod selector.
	oldArguments := (RBParser parseMethod: (class methodHeaderFor: selector)) argumentNames.
	oldMethodName := RBMethodName 
		selector: selector
		arguments: oldArguments.
	(newMethodName := self requestMethodNameFor: oldMethodName) ifNil: [ ^ nil ].
	argumentPermutation := newMethodName arguments collect: [ :each | oldArguments indexOf: each ].
	
	^ RBRenameMethodRefactoring
		model: environment
		renameMethod: selector
		in: class
		to: newMethodName selector
		permutation: argumentPermutation