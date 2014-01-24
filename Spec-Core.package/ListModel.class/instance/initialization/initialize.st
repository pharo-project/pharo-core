initialize
	super initialize.
	
	selectionHolder := SelectionReactiveVariable new.
	listHolder := Array new asReactiveVariable.
	sortingBlockHolder := self defaultSortingBlock asReactiveVariable.
	filteringBlockHolder := self defaultFilteringBlock asReactiveVariable.
	wrapBlockHolder := [ :object | object asStringOrText ] asReactiveVariable.
	menuHolder := [ :menu :shifted | nil ] asReactiveVariable.
	multiSelectionHolder := IdentityDictionary new asReactiveVariable.
	multiSelection := false asReactiveVariable.
	allowToSelect := true asReactiveVariable.
	backgroundColorBlock := [ :item :index | Color white ] asReactiveVariable.
	autoDeselect := true asReactiveVariable.
	listAnnouncer := Announcer new.
	self registerEvents.

	self
		bindKeyCombination: Character space
		toAction: [ self clickOnSelectedItem ]