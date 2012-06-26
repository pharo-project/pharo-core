operations
newVersion
	^ (self requestVersionNameAndMessageWithSuggestion: self uniqueVersionName) ifNotNil:
		[:pair |
		self newVersionWithName: pair first message: pair last].
