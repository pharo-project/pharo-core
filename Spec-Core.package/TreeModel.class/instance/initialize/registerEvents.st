registerEvents
	
	rootsHolder whenChangedDo: [ self updateTree ].
	childrenBlockHolder whenChangedDo: [ self updateTree ].
	displayBlock whenChangedDo: [ self updateTree ].
	
	iconBlock whenChangedDo: [ self updateTree ].
	autoDeselection whenChangedDo: [ :boolean | self update: {#autoDeselection:. boolean} ].
	columns whenChangedDo: [ :col | 
		col do: [ :each | each container: self ].
		self changed: #columns: with: { col } ].
	selectionHolder whenChangedDo: [:items | self changed: { #selectItems. items } ].
	rootNodeHolder whenChangedDo: [ :aBlock | self updateTree ].
	isCheckList whenChangedDo: [ :boolean | self changed: #isCheckList: with: { boolean }].
	
	menuBlockHolder  whenChangedDo: [ :aMenuModel :oldMenuModel |
		oldMenuModel ifNotNil: [ | oldMenu |
			oldMenuModel isBlock
				ifTrue: [ 
					oldMenu := MenuModel new.
					oldMenuModel cull: oldMenu ]
				ifFalse: [ oldMenu := oldMenuModel ].
		oldMenu applyTo: self ].
		
		aMenuModel ifNotNil: [ | newMenu |
			aMenuModel isBlock
				ifTrue: [ 
					newMenu := MenuModel new.
					aMenuModel cull: newMenu ]
				ifFalse: [ newMenu := aMenuModel ].
		newMenu applyTo: self ] ].
	
	self announcer weak
		on: WidgetBuilt
		send: #onWidgetBuilt
		to: self.