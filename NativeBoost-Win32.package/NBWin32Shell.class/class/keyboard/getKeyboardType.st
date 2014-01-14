getKeyboardType
	|types res| 
	types := #( 'IBM PC/XT or compatible (83-key) keyboard' 
	    			'Olivetti "ICO" (102-key) keyboard'
	    			'IBM PC/AT (84-key) or similar keyboard'
	   			'IBM enhanced (101- or 102-key) keyboard'
	    			'Nokia 1050 and similar keyboards' 
	    			'Nokia 9140 and similar keyboards' 
	    			'Japanese keyboard').	
	res := (self getKeyboardType: 0).
	^res <= types size 
		ifTrue: [ types at: res ]
		ifFalse: [ '' ]