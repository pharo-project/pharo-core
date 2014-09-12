initialize
	super initialize.
	
	selectionHolder := Object selectionReactiveVariable.
	listHolder := Array new asValueHolder.
	sortingBlockHolder := self defaultSortingBlock asValueHolder.
	filteringBlockHolder := self defaultFilteringBlock asValueHolder.
	wrapBlockHolder := [ :object | object asStringOrText ] asValueHolder.
	menuHolder := [ :menu :shifted | nil ] asValueHolder.
	multiSelectionHolder := IdentityDictionary new asValueHolder.
	multiSelection := false asValueHolder.
	allowToSelect := true asValueHolder.
	backgroundColorBlock := [ :item :index | Smalltalk ui theme backgroundColor ] asValueHolder.
	autoDeselect := true asValueHolder.
	listAnnouncer := Announcer new.
	self registerEvents.

	self
		bindKeyCombination: Character space
		toAction: [ self clickOnSelectedItem ]