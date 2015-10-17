= anExampleProxy
	^ self class = anExampleProxy class 
		and: [ self owner = anExampleProxy owner 
			and: [ self selector = anExampleProxy selector ] ]