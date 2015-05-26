silentlyDo: aBlock1 exceptionDo: aBlock2
	aBlock1
		on: Error, SyntaxErrorNotification, UndeclaredVariableWarning, OCSemanticWarning, OCSemanticError
		do: aBlock2