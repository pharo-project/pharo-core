serialize/materialize
serializeInstance: anObject with: anEncoder
	
	self serializeGlobalAssociationKeyed: (Smalltalk keyAtValue: anObject) on: anEncoder