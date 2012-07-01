initialization
name: aString traitComposition: aComposition methodDict: aMethodDict localSelectors: aSet organization: aClassOrganization

	"Used by copy"
	
	self name: aString.
	localSelectors := aSet.
	methodDict := aMethodDict.
	traitComposition := aComposition.
	self organization: aClassOrganization
	
	