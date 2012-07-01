*Tools
timeStamp
	"Answer the time stamp for the chosen class and method, if any, else an empty string"

	|  selector  aMethod |
	(selector := self selectedMessageName) ifNotNil:
		[self selectedClassOrMetaClass 
			ifNil:
				[^ String new]
			ifNotNil:
				[aMethod := self selectedClassOrMetaClass compiledMethodAt: selector ifAbsent: [nil].
				aMethod ifNotNil: [^ aMethod timeStamp]]].
	^ String new