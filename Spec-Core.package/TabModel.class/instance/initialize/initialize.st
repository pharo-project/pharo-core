initialize
	"Initialization code for TabModel"

	super initialize.

	label := '' asReactiveVariable.
	icon := self defaultIcon asReactiveVariable.
	morph := nil asReactiveVariable.
	retrievingBlock := nil asReactiveVariable.
	menu := nil asReactiveVariable.
	actions := OrderedCollection new asReactiveVariable.
	closeable := true asReactiveVariable.
	tabSelectedAction := [] asReactiveVariable.
	
	label whenChangedDo: [ :new | self widget ifNotNil: [ :w | w label: new ] ].
	icon whenChangedDo: [ :new | self widget ifNotNil: [ :w | w icon: new ] ].
	morph whenChangedDo: [ :new | self widget ifNotNil: [ :w | w morph: new ] ].
	retrievingBlock whenChangedDo: [ :new | self widget ifNotNil: [ :w | w retrievingBlock: new ] ].
	menu whenChangedDo: [ :new | self widget ifNotNil: [ :w | w menu: new ] ].
	actions whenChangedDo: [ :new | self widget ifNotNil: [ :w | w actions: new ] ].
	closeable whenChangedDo: [ :new | self widget ifNotNil: [ :w | w closeable: new ] ].