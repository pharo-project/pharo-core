execute
	self repository 
		ifNil: [ UIManager default inform: 'No repository associated to this configuration' ]
		ifNotNilDo: [ :repository | repository morphicOpen ]