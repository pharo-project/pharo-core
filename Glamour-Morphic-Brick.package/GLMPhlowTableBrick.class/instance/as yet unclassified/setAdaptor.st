setAdaptor
	| adaptor |
	adaptor := (GLMBrickListAdaptor on: self transformedEntity)
		morphAtLogic: [ :index | 
			GLMPhlowTableRowBrick new
				in: self;
				entity: (self transformedEntity at: index) ].
	self listBrick adaptor: adaptor