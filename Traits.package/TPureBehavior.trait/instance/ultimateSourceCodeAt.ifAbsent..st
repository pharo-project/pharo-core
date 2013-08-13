accessing method dictionary
ultimateSourceCodeAt: selector ifAbsent: aBlock
	"Return the source code at selector"
	
	^self
		sourceCodeAt: selector
		ifAbsent: aBlock