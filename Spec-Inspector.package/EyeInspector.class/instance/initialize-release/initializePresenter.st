initializePresenter
	"initialize the event handlings"

	object whenChangedDo: [ self objectChanged ].
	
	list whenSelectedItemChanged: [ :item |
		self printDescription: item ].
	
	description whenTextIsAccepted: [ :newText |
		self saveElement: newText.
		self printDescription ].
	
	self initializeShortcuts.	