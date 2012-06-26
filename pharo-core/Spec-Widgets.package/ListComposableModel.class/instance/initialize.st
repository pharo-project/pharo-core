initialize
initialize

	super initialize.

	selectionHolder := SelectionValueHolder new.
	listHolder := Array new asValueHolder.
	sortingBlockHolder := self defaultSortingBlock asValueHolder.
	filteringBlockHolder := self defaultFilteringBlock asValueHolder.
	wrapBlockHolder := [ :object | object asStringOrText ] asValueHolder.
	menuHolder := [ :menu :shifted | nil ] asValueHolder.
	shortcutsHolder := [ :event :sourceMorph |  ] asValueHolder.
	multiSelectionHolder := IdentityDictionary new asValueHolder.
	multiSelection := false asValueHolder.
	allowToSelect := true asValueHolder.

	self registerEvents