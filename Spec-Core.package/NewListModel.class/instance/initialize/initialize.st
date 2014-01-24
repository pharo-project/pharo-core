initialize
	"Initialization code for NewListModel"

	super initialize.
	
	items := #() asReactiveVariable.
	deSelectOnReclick := false asReactiveVariable.
	draggedItemAtIndex := [ :index | self getRawItemAt: index ] asReactiveVariable.
	displayBlock := [ :object | object asStringOrText ] asReactiveVariable.
	headerHeight := 0 asReactiveVariable.
	headerTitle := nil asReactiveVariable.
	menuTitle := nil asReactiveVariable.
	menuHolder := nil asReactiveVariable.
	handlesDoubleClick := false asReactiveVariable.
	doubleClick := [  ] asReactiveVariable.
	iconHolder := [ nil ] asReactiveVariable.
	iconMaxSize := nil asReactiveVariable.
	keyStrokeAction := [ false ] asReactiveVariable.
	isMultipleSelection := false asReactiveVariable.
	unselectOnChange := false asReactiveVariable.
	sortingBlock := self defaultSortingBlock asReactiveVariable.
	filteringBlock := self defaultFilteringBlock asReactiveVariable.
	allowToSelect := true asReactiveVariable.
	listAnnouncer := Announcer new.
	headerClicked := [] asReactiveVariable.
	selectedIndex := 0 asReactiveVariable.
	selectedItem := nil asReactiveVariable.
	selectedIndexes := #() asReactiveVariable.
	selectedItems := #() asReactiveVariable.
	separatorBlock := [ false ] asReactiveVariable.
	
	self registerEvents