extensionMethods
	"Extension methods are methods defined on classes that are not defined in the receiver"
	| allExtensionMethods |
	
	allExtensionMethods := OrderedCollection new.
	classExtensionSelectors keysAndValuesDo: [ :classSymbol :methods |
		methods do: [ :selector | allExtensionMethods add: ((Smalltalk at: classSymbol) >> selector) ] ].
	metaclassExtensionSelectors keysAndValuesDo: [ :classSymbol :methods |
		methods do: [ :selector | allExtensionMethods add: ((Smalltalk at: classSymbol) theMetaClass >> selector) ] ].	
	
	^ allExtensionMethods				