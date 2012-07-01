accessing method dictionary
ultimateSourceCodeAt: selector ifAbsent: aBlock
	"Return the source code at selector, deferring to superclass if necessary"
	^ self sourceCodeAt: selector ifAbsent:
		[superclass
			ifNil:
				[aBlock value]
			 ifNotNil:
				[superclass ultimateSourceCodeAt: selector ifAbsent: aBlock]]