registerEvents
	treeModel announcer
		on: MorphTreeSelectionChanged
		send: #onMorphTreeSelectionChanged:
		to: self.
	rootsHolder whenChangedDo: [ self updateTree ].
	childrenBlockHolder whenChangedDo: [ self updateTree ].
	displayBlock whenChangedDo: [ self updateTree ].
	rootNodeHolder whenChangedDo: [ self updateTree ].
	iconBlock whenChangedDo: [ self updateTree ].
	autoDeselection
		whenChangedDo: [ :boolean | 
			self
				update:
					{#autoDeselection:.
					boolean} ].
	columns whenChangedDo: [ :col | self widget ifNotNil: [ :w | w columns: col ] ].
	self announcer weak
		on: WidgetBuilt
		send: #onWidgetBuilt
		to: self.