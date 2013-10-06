asRingDefinition
	"A triat is converted to a ring class. Only the receiver is converted.
	Methods, superclasses, subclasses are not generated"

	| ring |
	ring:= (RGFactory current createTraitNamed: self name)
		category: self category;
		superclassName: #Trait;  
		traitCompositionSource: self traitCompositionString;
		comment: self organization classComment;
		stamp: self organization commentStamp;
		definitionSource: self definition;
		withMetaclass.
		
	ring theMetaClass 
		traitCompositionSource: self theMetaClass traitCompositionString;
		definitionSource: self theMetaClass definition.
	^ring