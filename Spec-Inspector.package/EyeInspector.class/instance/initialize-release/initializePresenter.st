initializePresenter
	"initialize the event handlings"

	object whenChangedDo: [ self objectChanged ].
	
	list whenSelectedItemChanged: [ :item |
		self refreshDescription: item ].
	
	description whenTextIsAccepted: [ :newText |
		self saveElement: newText.
		self refreshDescription ].
	
	self initializeShortcuts.	