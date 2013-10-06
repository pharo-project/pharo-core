classList
	"Answer an array of the class names of the selected category. Answer an 
	empty array if no selection exists."

	systemCategoryListIndex = 0
		ifTrue: [^Array new]
		ifFalse: [^systemOrganizer listAtCategoryNumber: systemCategoryListIndex]