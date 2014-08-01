methodRefList
	"Return a MethodReference for each message I can send."
	
	|list sel|
	list := super methodRefList.
	sel := mouseOverSelector.
	mouseOverRecipient ifNotNil: 
		[:recipient | 
			list add: 
				(RGMethodDefinition
					realClass: (recipient class whichClassIncludesSelector: sel)
					selector: sel)].
	^list