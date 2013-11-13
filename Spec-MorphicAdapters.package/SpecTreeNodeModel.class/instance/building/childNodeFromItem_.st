childNodeFromItem: anItem
	
	^ anItem asTreeNodeModel
	container: self model;
	buildWithSpec