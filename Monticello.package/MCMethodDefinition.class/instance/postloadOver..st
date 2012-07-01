installing
postloadOver: aDefinition
	super postloadOver: aDefinition.
	self class initializersEnabled ifTrue: [
		(self isInitializer
			and: [ self actualClass isTrait not 
					and: [ aDefinition isNil or: [ self source ~= aDefinition source ]]]) ifTrue: [
				self actualClass theNonMetaClass initialize ] ].
	"Postloading of FFI fields."
	self isExternalStructureFieldDefinition
		ifTrue: [self actualClass theNonMetaClass compileFields].