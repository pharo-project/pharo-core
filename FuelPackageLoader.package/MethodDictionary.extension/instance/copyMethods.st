*FuelPackageLoader
copyMethods
	self keysAndValuesDo: [:selector :method |
		self at: selector put: method copy.
		]