*RPackage-SystemIntegration
systemMethodRecategorizedActionFrom: ann
	"a protocol has been renamed
	a method has been removed. // WILL BE TREATED WITH SystemMethodRemovedAnnouncement
	a method has been moved to another category 
		-maybe from the classic category to an extending package
		-maybe from an extending package to another extending package
		-maybe from an extending package to a classic category
		- maybe from a classic category to another classic category"
		
	|oldProtocol newProtocol method methodPackage destinationPackage|
	self flag: #cyrille.
	oldProtocol := ann oldProtocol.
	"old protocol might be nil:"
	oldProtocol asString ifNil: [oldProtocol := ''].
	newProtocol := ann  newProtocol.
	method := ann methodRecategorized.
	
	"1). See compiledMethod >> packageFromOrganizer:"
	
	"we have to pay attention that this announcement can come from TraitDescription>>updateOrganizationSelector:oldCategory:newCategory: . In this context, it can happen that the method referenced by the event is nil. In this case I think we should change nothing"
	
	
	method isNil ifFalse: [
		"If the method origin is not the one of the event, we do not care about that method"
		method origin = ann methodClass ifFalse: [^ self].
		
		methodPackage := method packageFromOrganizer: self.
		"if newProtocol is nil, it means that we are in a 'methodRemoved' case. Nothing should be modified (all the work will be done when catching methodRemovedAnnouncement) " 
		newProtocol isNil ifTrue: [^self].
		"it can happen that oldProtocol is Nil. in this case we should do nothing"
		oldProtocol ifNil: [^ self].
		"maybe the category has changed"
		newProtocol asLowercase = oldProtocol asLowercase
			ifFalse: [
				"according the extension specified is valid or not, the method will be defined as an extension of an external package or in the class parent package"
				destinationPackage := (self hasPackageForProtocol: newProtocol inClass: method methodClass)
					ifTrue: [ self packageForProtocol: newProtocol inClass: method methodClass ]
					ifFalse: [ method methodClass package ].
				methodPackage := (self hasPackageForProtocol: oldProtocol inClass: method methodClass)
					ifTrue: [ self packageForProtocol: oldProtocol inClass: method methodClass ]
					ifFalse: [ method methodClass package ].

				"then, we will remove the method from the method package, and add it to the destination package (we check before that the source package and the destination package are different)."
				methodPackage = destinationPackage
					ifFalse: [
						methodPackage removeMethod: method.
						destinationPackage addMethod: method
						]
				]
		]
	
	