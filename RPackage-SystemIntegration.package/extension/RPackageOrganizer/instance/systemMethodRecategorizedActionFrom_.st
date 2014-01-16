systemMethodRecategorizedActionFrom: ann
	"a protocol has been renamed
	a method has been removed. // WILL BE TREATED WITH SystemMethodRemovedAnnouncement
	a method has been moved to another category 
		-maybe from the classic category to an extending package
		-maybe from an extending package to another extending package
		-maybe from an extending package to a classic category
		- maybe from a classic category to another classic category"
		
	| oldProtocol newProtocol method methodPackage destinationPackage |

	method := ann methodRecategorized.
	method ifNil: [ ^ self ].
	method origin = ann methodClass ifFalse: [ ^ self].

	newProtocol := ann  newProtocol.
	newProtocol ifNil: [ ^ self ].

	oldProtocol := ann oldProtocol ifNil: [ '' ].
	
	methodPackage := method packageFromOrganizer: self.
	newProtocol asLowercase = oldProtocol asLowercase
		ifFalse: [
			destinationPackage := (self hasPackageForProtocol: newProtocol inClass: method methodClass)
				ifTrue: [ 
					self packageForProtocol: newProtocol inClass: method methodClass ]
				ifFalse: [ 
					(newProtocol beginsWith: '*')
						ifTrue: [ self ensureExistAndRegisterPackageNamed: newProtocol allButFirst capitalized ]
						ifFalse: [ method methodClass package ] ].
					
			methodPackage := (self hasPackageForProtocol: oldProtocol inClass: method methodClass)
				ifTrue: [ self packageForProtocol: oldProtocol inClass: method methodClass ]
				ifFalse: [ method methodClass package ].

			methodPackage = destinationPackage
				ifFalse: [
					(methodPackage methods includes: method) 
						ifTrue: [ methodPackage removeMethod: method ].
					
					destinationPackage addMethod: method.
					
					SystemAnnouncer uniqueInstance
						methodRepackaged: method
						from: methodPackage
						to: destinationPackage ] ]