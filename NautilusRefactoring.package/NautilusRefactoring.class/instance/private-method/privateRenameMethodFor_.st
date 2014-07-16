privateRenameMethodFor: aMethod
	| class selector oldMethodName newMethodName tempOldArguments oldArguments argumentPermutation |
	class := aMethod methodClass.
	selector := aMethod selector.
	oldArguments := aMethod ast arguments collect: [ :each | each token value ].
	tempOldArguments := aMethod ast arguments collect: [ :each | each token value ].
	oldMethodName := RBMethodName selector: selector arguments: oldArguments.
	(newMethodName := self requestMethodNameFor: oldMethodName) ifNil: [ ^ nil ].
	argumentPermutation := newMethodName arguments collect: [ :each | tempOldArguments indexOf: each ].
	^ RBRenameMethodRefactoring
		model: environment
		renameMethod: selector
		in: class
		to: newMethodName selector
		permutation: argumentPermutation