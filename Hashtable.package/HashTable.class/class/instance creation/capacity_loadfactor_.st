capacity: anInteger loadfactor: aFloat
	| size table |
	size := (anInteger / aFloat) asInteger.
	table := Array new: size.
	^ super new
		capacity: anInteger;
		setLoadfactor: aFloat;
		table: table;
		yourself.