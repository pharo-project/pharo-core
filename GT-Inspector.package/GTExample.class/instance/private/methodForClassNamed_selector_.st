methodForClassNamed: aClassOrClassName selector: aSelector
	^ self classNamed: aClassOrClassName 
		do: [ :class | self methodForClass: class selector: aSelector ] 
		ifNone: [ GTExampleMethod new 
						providerName: aClassOrClassName;
						selector: aSelector asSymbol;
						yourself ]