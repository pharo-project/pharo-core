searchForSelector
	"search me in all classes, if found, return my selector. Slow!"
	
	self systemNavigation allBehaviorsDo: [:class | | selector | 
		(selector := class methodDict keyAtIdentityValue: self ifAbsent: [nil]) ifNotNil: [^selector]].
	^nil.