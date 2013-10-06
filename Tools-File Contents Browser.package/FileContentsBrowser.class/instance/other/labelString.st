labelString
	"Answer the string for the window title"

	^ 'File Contents Browser ', (self selectedSystemCategoryName ifNil: [''])