defer: aValuable
	self owner 
		ifNotNil: [ self owner defer: aValuable] 
		ifNil: [ UIManager default defer: aValuable ]