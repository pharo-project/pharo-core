initialize
	super initialize.

	self listBrick adaptor
		morphAtLogic: [ :index | GLMPhlowrTableRowBrick new in: self; entity: (self transformedEntity at: index) ]