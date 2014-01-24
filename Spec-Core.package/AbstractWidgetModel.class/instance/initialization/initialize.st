initialize

	super initialize.

	helpHolder := nil asReactiveVariable.
	borderWidth := 0 asReactiveVariable.
	borderColor := Color transparent asReactiveVariable.
	enabledHolder := true asReactiveVariable.
	dragEnabled := false asReactiveVariable.
	dropEnabled := false asReactiveVariable.
	dragTransformationBlock := [ :item :source | item ] asReactiveVariable.
	wantDropBlock := [ :draggedItem :event :source | self dropEnabled ] asReactiveVariable.
	acceptDropBlock := [ :draggedItem :event :source | ] asReactiveVariable.
	transferBlock := [:passenger :source | super transferFor: passenger from: source ] asReactiveVariable.
	
	helpHolder whenChangedDo: [:string | 
		self widget ifNotNil: [:w | w update: #setBalloonText: with: { string } ] ].
	
	borderWidth whenChangedDo: [:int | 
		self widget ifNotNil: [:w | w update: #borderWidth: with: { int } ] ].
	
	borderColor whenChangedDo: [:color | 
		self widget ifNotNil: [:w | w update: #borderColor: with: { color } ] ].
	
	enabledHolder whenChangedDo: [:b |
		self widget ifNotNil: [:w | w update: #enabled: with: { b } ] ].
	
	dragEnabled whenChangedDo: [:b |
		self widget ifNotNil: [:w | w update: #dragEnabled: with: { b } ] ].
	
	dropEnabled whenChangedDo: [:b |
		self widget ifNotNil: [:w | w update: #dropEnabled: with: { b } ] ].