building
attachCategory: aCategoryName targetting: anObject
	self targets add: (KMCategoryTarget target: anObject morph: morph category: (KMRepository default categoryForName: aCategoryName) )