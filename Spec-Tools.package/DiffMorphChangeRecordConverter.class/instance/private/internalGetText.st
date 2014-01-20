internalGetText	

	^ Array with: method sourceCode with:((self priorVersionOfAMethod:method )sourceCode)