fileEntriesDo: aBlock
	self flag: 'Hardcoded extension packages :/'.
	self categories 
		reject: [ :name | name == Protocol nullCategory or: [ name first = $* ]]
		thenDo: [ :name |
			aBlock value: (ProtocolEntry class: self subject protocol: name)]