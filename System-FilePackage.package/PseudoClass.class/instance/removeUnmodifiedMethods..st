removing
removeUnmodifiedMethods: aCollection
	| stClass |
	self exists ifFalse:[^self].
	stClass := self realClass.
	aCollection do:[:sel|
		(self sourceCodeAt: sel) = (stClass sourceCodeAt: sel ifAbsent:['']) asString ifTrue:[
			self removeMethod: sel.
		].
	].
	self organization removeEmptyCategories.