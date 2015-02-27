setAdaptor
	| adaptor |
	adaptor := (GLMBrickListAdaptor on: self entity)
		morphAtLogic: [ :index :morph |
			self styledLogic
				phlowValue: (self formatLogic phlowValue: (self displayLogic phlowValue: (self entity at: index))) asBrick ].
	self listBrick adaptor: adaptor