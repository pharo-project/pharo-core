*Tools-Browser
browseAllSendersOf: aLiteral from: aBehavior
	"Create and schedule a Message Set browser for
	 all the methods that call on aLiteral within aBehavior."

	"self new browseAllSendersOf: #/ from: Number"

	^self headingAndAutoselectForLiteral: aLiteral do:
		[:label :autoSelect|
		self 
			browseMessageList: (self  allCallsOn: aLiteral from: aBehavior)
			name: label, ' from ', aBehavior name
			autoSelect: autoSelect]

	