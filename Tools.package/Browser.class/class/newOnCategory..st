instance creation
newOnCategory: aCategory
	"Browse the system category of the given name."

	"Browser newOnCategory: 'Interface-Browser'"

	| newBrowser catList |
	newBrowser := self new.
	catList := newBrowser systemCategoryList.
	newBrowser systemCategoryListIndex: 
		(catList indexOf: aCategory asSymbol ifAbsent: [^ self inform: 'No such category']).
	^ self 
		openBrowserView: (newBrowser openSystemCatEditString: nil)
		label: 'Classes in category ', aCategory
