objectInspectorTab

	^ self newTab
		label: 'Object inspector';
		icon: (Smalltalk ui icons iconNamed: #nautilusIcon);
		retrievingBlock: [ (EyeInspector new
				inspect: Object;
				buildWithSpec: #inspectorSpec) asWidget ];
		yourself.
	