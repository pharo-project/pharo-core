as yet unclassified
modifiedBy: modifier
	^ KMComposedModifier new
		modifiedBy: modifier;
		modifiedBy: self;
		yourself