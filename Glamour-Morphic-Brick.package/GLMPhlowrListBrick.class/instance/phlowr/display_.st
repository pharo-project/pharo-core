display: aBlockOrSymbol
	
	self listBrick adaptor
		morphAtLogic: [ :index :morph | self styledLogic cull: (self formatLogic cull: (aBlockOrSymbol cull: (self entity at: index))) asBrick ]