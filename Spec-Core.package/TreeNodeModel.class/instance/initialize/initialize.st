initialize

	super initialize.

	children := [ self container childrenFor: self content ] asReactiveVariable.
	hasChildren := [ self container hasChildrenFor: self content ] asReactiveVariable.
	content := nil asReactiveVariable.
	icon := nil asReactiveVariable.
	container := nil asReactiveVariable.
	matchTokenFilter := [ :aFilter | false ] asReactiveVariable.
	parentNode := nil asReactiveVariable.
	childNodeClass := self class asReactiveVariable.
	selected := false asReactiveVariable.
	lastClicked := false asReactiveVariable.
	mouseDownAction := [:event | ] asReactiveVariable.
	hasContentToShow := false asReactiveVariable.
	isExpanded := false asReactiveVariable.
	
	selected whenChangedDo: [ :aBoolean | self changed: #selected: with: { aBoolean } ].
	isExpanded whenChangedDo: [ :aBoolean | self changed: #isExpanded: with: { aBoolean } ].