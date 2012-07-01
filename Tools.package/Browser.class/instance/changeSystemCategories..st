system category functions
changeSystemCategories: aString 
	"Update the class categories by parsing the argument aString."

	systemOrganizer changeFromString: aString.
	self changed: #systemCategoryList.
	^ true