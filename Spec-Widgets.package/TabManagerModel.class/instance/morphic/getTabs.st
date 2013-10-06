getTabs

	^ [ self tabs collect: [ :each | each ensureWidget ] ]