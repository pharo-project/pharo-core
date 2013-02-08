add/remove
addFalsePositiveClass: aClass 
	|fp|
	
	falsePositiveClasses add: aClass theNonMetaClass. 
	
	critics keysAndValuesDo: [:rule :criticss |
		fp := criticss select: [:critic |
			aClass = (critic isCompiledMethod 
				ifTrue: [critic methodClass theNonMetaClass]
				ifFalse: [critic])].
		fp do: [:each |
			self addFalsePositive: each forRule: rule ]
			
			].
	
	self updateBrowser	
