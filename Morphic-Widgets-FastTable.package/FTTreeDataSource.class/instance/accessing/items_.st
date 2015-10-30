items: aCollection
	items := Array withAll: (aCollection collect: [ :each | FTTreeItem data: each from: self ])