initialize
	"Initialization code for TabManagerModel"

	super initialize.

	tabs := OrderedCollection new asValueHolder.
	tabSelectedAction := [] asValueHolder.
	self myDependents: WeakSet new.
	
	tabs whenChangedDo: [ :new | self widget ifNotNil: [ :w | w tabs: self getTabs value ] ].