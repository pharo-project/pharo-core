initialize

	enterMethod := self class callbackEnterMethod.
	index := NativeBoost extraRootsRegistry registerCallback: self.
	self installTrunk.
	
	NBExternalResourceManager addResource: self data: {trunk. index }.