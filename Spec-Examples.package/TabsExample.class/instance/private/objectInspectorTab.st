objectInspectorTab
	| tab |
	
	tab := self newTab.
	tab
		label: 'Object inspector';
		icon: Smalltalk ui icons nautilusIcon;
		retrievingBlock: [ (EyeInspector new
				inspect: Object;
				buildWithSpec: #inspectorSpec) asWidget ].
			
	^ tab