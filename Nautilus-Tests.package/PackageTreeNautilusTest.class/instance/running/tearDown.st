tearDown
	nautilus ifNotNil: [ :aNautilus | 
		aNautilus ui ifNotNil: [ :aUI | aUI close ] ].
	super tearDown