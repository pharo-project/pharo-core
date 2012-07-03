*Compiler-Kernel
bindingOf: varName
	
	"Answer the binding of some variable resolved in the scope of the receiver"
	| aSymbol binding |
	aSymbol := varName asSymbol.

	"Look in declared environment."
	binding := self environment bindingOf: aSymbol.
	^binding