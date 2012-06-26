*RPackage-SystemIntegration
methodAdded: anEvent
	"precondition: package exist, class exist"
	
	"| cm |
	cm := anEvent item.
	cm isValid ifFalse: [^self]. " "to eliminate comment and doit crap"
	| methodCategory |
	methodCategory := anEvent itemProtocol.
	(methodCategory isEmptyOrNil or:[methodCategory first ~= $*]) 
		ifTrue: [ ]
		ifFalse: [(self isPackageDefinedForClass: anEvent itemClass)
					ifFalse: [self packageClass new named: (Smalltalk organization categoryOfElement: anEvent itemClass asSymbol) ].
	].
	