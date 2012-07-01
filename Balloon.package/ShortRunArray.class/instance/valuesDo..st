enumerating
valuesDo: aBlock
	self lengthsAndValuesDo:[:runLength :runValue| aBlock value: runValue]