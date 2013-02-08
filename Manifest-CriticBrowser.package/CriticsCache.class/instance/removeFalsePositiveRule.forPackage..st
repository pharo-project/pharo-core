add/remove
removeFalsePositiveRule: aRule forPackage: aPackage
	| fp |
	
	(falsePositiveRules includesKey: aPackage) 
		ifFalse: [^ self].
	
	(falsePositiveRules at:aPackage) remove: (aRule class uniqueIdentifierName) ifAbsent: [^ self]. 

	fp := (critics at: aRule ifAbsent: [^ self])
		select: [:c | ((self packageOf: c) package name) = (aPackage packageName) and: [
				(falsePositiveClasses includes: (c isCompiledMethod 
					ifTrue: [c methodClass theNonMetaClass] 
					ifFalse: [c])) not]].

			
	fp do: [:c | self removeFalsePositive: c forRule: aRule]. 
	
	self updateBrowser 