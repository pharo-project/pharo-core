accessing method dictionary
changeRecordsAt: selector
	"Return a list of ChangeRecords for all versions of the method at selector. Source code can be retrieved by sending string to any one.  Return nil if the method is absent."

	"(Pen changeRecordsAt: #go:) collect: [:cRec | cRec string]"
	^ChangeSet 
		scanVersionsOf: (self compiledMethodAt: selector ifAbsent: [^ nil])
		class: self meta: self isMeta
		category: (self whichCategoryIncludesSelector: selector)
		selector: selector.