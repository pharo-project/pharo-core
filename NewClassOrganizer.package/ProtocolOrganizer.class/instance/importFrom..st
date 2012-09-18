importing
importFrom: aClassOrganizer 
	
	aClassOrganizer categories do: [:cat || protocol methods |
		cat = ClassOrganizer nullCategory
			ifFalse: [
				methods := aClassOrganizer listAtCategoryNamed: cat. 
				protocol := self addProtocolNamed: cat asString.
				methods do: [:m |
					protocol  addMethod: m ]]].