openInspector: inspector

	^ self new
		inspector: inspector;
		openWithSpec: #inspectorSpec;
		yourself