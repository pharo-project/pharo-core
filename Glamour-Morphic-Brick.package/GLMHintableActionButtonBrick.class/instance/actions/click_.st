click: evt
	|result|
	result := super click: evt.
	self class asyncTaskUniqueInstance terminate.
	^ result