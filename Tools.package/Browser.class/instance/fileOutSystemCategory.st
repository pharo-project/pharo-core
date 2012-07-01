system category functions
fileOutSystemCategory
	"Print a description of each class in the selected category onto a file 
	whose name is the category name followed by .st."

	systemCategoryListIndex ~= 0
		ifTrue: [systemOrganizer fileOutCategory: self selectedSystemCategoryName]