fieldList
	"Answer the base field list plus an abbreviated list of indices."

	^ self baseFieldList , (self contextStack collectWithIndex: [:ctx : index| 
		'[', (index printString padLeftTo: 2 with: $0) , '-', ((ctx class name copyAfter: $I) copyReplaceAll: 'Context' with: 'Ctx') , ']'])