display: anObject
	
	self listBrick adaptor
		morphAtLogic: [ :index :morph | self styledLogic phlowValue: (self formatLogic phlowValue: (anObject phlowValue: (self entity at: index))) asBrick ]