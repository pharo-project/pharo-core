as yet unclassified
tearDown
	super tearDown.
	#('demo.fuel' 'numbers.fuel' 'number.fuel.zip' 'example.FL' ) 
		do: [:each | each asFileReference ensureDeleted ].
		