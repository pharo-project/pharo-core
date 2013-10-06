attachCategory: aCategoryName onProperty: aProperty
	self targets add: (KMCategoryTarget 
						target: [ morph perform: aProperty ] 
						morph: morph 
						category: (KMRepository default categoryForName: aCategoryName) )