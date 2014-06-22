collectFromPackages: aCollection
	self packagesSelection: (self environment select: [:each | aCollection includes: each category ])