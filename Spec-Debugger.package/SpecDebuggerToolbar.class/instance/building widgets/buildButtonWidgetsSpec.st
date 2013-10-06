buildButtonWidgetsSpec
	
	^ self validButtonIds 
		inject: OrderedCollection new
		into: [ :specs :id |
			specs 
				add: id;
			 	add: #ButtonModel;
				yourself ]

	