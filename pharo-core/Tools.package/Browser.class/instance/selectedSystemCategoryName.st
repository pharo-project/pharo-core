system category list
selectedSystemCategoryName
	"Answer the name of the selected system category or nil."

	systemCategoryListIndex = 0 ifTrue: [^nil].
	^self systemCategoryList at: systemCategoryListIndex