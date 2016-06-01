removeRenrakuCrap
	
	self removedExtendedClassesPerPackage keysAndValuesDo: [ :packageName :classNames |
		self removeCrapOf: packageName from: classNames ]