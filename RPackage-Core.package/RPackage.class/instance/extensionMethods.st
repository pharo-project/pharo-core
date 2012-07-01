accessing
extensionMethods
	"Extension methods are methods defined on classes that are not defined in the receiver"
	
	| mthds |
	mthds := OrderedCollection new.
	classExtensionSelectors keysAndValuesDo: [ :classSymbol :methods |
			methods do: [ :sel | mthds add: ((Smalltalk at: classSymbol) >>	sel)]].
	metaclassExtensionSelectors
	 keysAndValuesDo: [ :classSymbol :methods |
			methods do: [ :sel | mthds add: ((Smalltalk at: classSymbol) class >>sel)]].	
	^ mthds				