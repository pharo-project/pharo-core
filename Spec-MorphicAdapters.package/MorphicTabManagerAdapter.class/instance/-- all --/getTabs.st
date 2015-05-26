getTabs

	^ [ self model tabs collect: [ :each | each buildWithSpec asWidget ] ]