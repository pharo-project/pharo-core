testNull
	self assert: (self serializeJson: nil) equals: 'null'