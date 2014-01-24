initialize

	super initialize.

	color := Color black asReactiveVariable.
	morph := Morph new 
				color: self color;
				extent: 25@25;
				yourself