running
checkClass: aContext 
	| selectors |
	selectors := self badSelectors 
		inject: Set new
		into: 
			[ :set :each | 
			set
				addAll: (aContext selectedClass whichSelectorsReferTo: each);
				yourself ].
	selectors do: 
		[ :each | 
		result 
			addClass: aContext selectedClass
			selector: each ].
	selectors isEmpty ifFalse: [ result searchStrings: self badSelectors ]