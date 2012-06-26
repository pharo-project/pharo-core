accessing
searchForClass
	"search me in all classes, if found, return my class. Slow!"
	self systemNavigation allBehaviorsDo: [:class | 
		(class methodDict keyAtIdentityValue: self ifAbsent: [nil]) ifNotNil: [^class]].
	^nil.