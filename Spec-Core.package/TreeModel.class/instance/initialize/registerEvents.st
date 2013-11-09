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
	
	self announcer weak
		on: WidgetBuilt
		send: #onWidgetBuilt
		to: self.