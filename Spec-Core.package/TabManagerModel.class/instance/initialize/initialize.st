initialize
	"Initialization code for TabManagerModel"

	super initialize.

	tabs := OrderedCollection new asReactiveVariable.
	tabSelectedAction := [] asReactiveVariable.
	selectedTab := nil asReactiveVariable.
	
	self myDependents: WeakSet new.
	
	tabs whenChangedDo: [ :new | self widget ifNotNil: [ :w | w tabs: self getTabs value ] ].
	selectedTab whenChangedDo: [:newTab | tabSelectedAction value cull: newTab cull: self ]