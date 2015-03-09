initializeItems
	
	self band layoutAfter: [
		1 to: self adaptor count do: [ :index |
			self band addBrickBack: (self adaptor morphAt: index convert: nil) ] ].
	
	self band hasSubbricks ifFalse: [ ^ self ]