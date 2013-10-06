asRingDefinition
	"A behavior is converted to a ring class. Only the receiver and its variables (instance, class, pools) are converted.
	Methods, superclasses, subclasses are not generated"
	
	| ring |
	ring := (RGFactory current createClassNamed: self name)
		category: self category;
		superclassName: self superclass name;  
		traitCompositionSource: self traitCompositionString;
		addInstanceVariables: self instVarNames;
		addClassVariables: self classVarNames;
		addPoolDictionaries: self poolDictionaryNames;
		comment: self organization classComment;
		stamp: self organization commentStamp;
		definitionSource: self definition;
		withMetaclass.
	ring theMetaClass 
		traitCompositionSource: self theMetaClass traitCompositionString;
		definitionSource: self theMetaClass definition;
		addInstanceVariables: self theMetaClass instVarNames.  
	^ ring