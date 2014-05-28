initialize
	super initialize.
	
	selectionHolder := Object selectionReactiveVariable.
	listHolder := Array new asReactiveVariable.
	sortingBlockHolder := self defaultSortingBlock asReactiveVariable.
	filteringBlockHolder := self defaultFilteringBlock asReactiveVariable.
	wrapBlockHolder := [ :object | object asStringOrText ] asReactiveVariable.
	menuHolder := [ :menu :shifted | nil ] asReactiveVariable.
	multiSelectionHolder := IdentityDictionary new asReactiveVariable.
	multiSelection := false asReactiveVariable.
	allowToSelect := true asReactiveVariable.
	backgroundColorBlock := [ :item :index | Smalltalk ui theme backgroundColor ] asReactiveVariable.
	autoDeselect := true asReactiveVariable.
	listAnnouncer := Announcer new.
	self registerEvents.

	self
		bindKeyCombination: Character space
		toAction: [ self clickOnSelectedItem ]