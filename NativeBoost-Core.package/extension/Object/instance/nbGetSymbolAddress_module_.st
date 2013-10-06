nbGetSymbolAddress: aName module: aModuleNameOrHandle
	"Lookup for given symbol in external module and answer its address
	(an instance of NBExternalAddress), or nil if not found.
	
	A default implementation,
	first we try to use OS-specific symbol lookup mechanism,
	and if not found, we try to lookup a symbol from VM registered plugin(s)"
	
	| addr |
	
	addr := NativeBoost loadSymbol: aName fromModule: aModuleNameOrHandle.

	^ addr ifNil: [ 
		"loadfunction takes only names, not handles"
		aModuleNameOrHandle isString 
			ifFalse: [ nil ] 
			ifTrue: [ NativeBoost loadFunction: aName from: aModuleNameOrHandle ]]