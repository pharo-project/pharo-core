*FuelPackageLoader
removeForeignProtocol

	self foreignCategories do: [ :aCategory |
		self removeCategorySilently: aCategory ]