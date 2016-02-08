compose
	self title: [:anObject | 'Inspector on ', (self printObjectAsAnItem: anObject)].
	self act: [:b | b update] icon: GLMUIThemeExtraIcons glamorousRefresh entitled: 'Update'.
	self act: [:b | 
		| tree item |
		tree := (HelpBrowser open instVarNamed: #treeMorph).
		item := tree allItems detect: [:each | 
			each complexContents item key = GTInspectorHelp key].
		tree selection: item ] 
		icon: GLMUIThemeExtraIcons glamorousHelp 
		entitled: 'Help'.
	self act: [:b | b presentationFilter ifNotNil: [ :filter | filter changeFilterRequestFor: b] ] entitled: 'Filter presentations'.
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
			
	self first when: GLMPaneAdded send: #actOnPaneAdded: to: self