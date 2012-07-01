operations
newVersionWithMessage: aMessageString
	^ self newVersionWithName: self uniqueVersionName message: aMessageString.

	"^ (self requestVersionNameAndMessageWithSuggestion: self uniqueVersionName) ifNotNil:
		[:pair |
		self newVersionWithName: pair first message: aMessageString].
	"