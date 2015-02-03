initialize
	super initialize.

	self listBrick adaptor
		morphAtLogic: [ :index | GLMPhlowTableRowBrick new in: self; entity: (self transformedEntity at: index) ]