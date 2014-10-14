compose
	self title: [:anObject | 'Inspector on ', (self printObjectAsAnItem: anObject)].
	self act: [:b | b update] icon: GLMUIThemeExtraIcons glamorousRefresh entitled: 'Update'.
	self pager with: [ :browser | 
		browser fixedSizePanes: self class numberOfInspectorPanes.
		browser show: [ :a :each |
			a title: [ self printObjectAsAnItem: each ].
			a dynamicActions: [ :aPresentation | 
				each gtInspectorActions asOrderedCollection ].
			a titleAction: [ :aPresentation | self closeActionFor: aPresentation ].
			a dynamic 
				display: [ :x | 
					(GLMCompositePresentation new with: [:d | 
						each 
							gtInspectorPresentationsIn: d 
							inContext: self ])
							startOn: x ] ] ].
			
	self first on: GLMPaneAdded send: #actOnPaneAdded: to: self