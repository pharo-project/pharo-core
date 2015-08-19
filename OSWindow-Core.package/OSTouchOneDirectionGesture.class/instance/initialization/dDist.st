dDist
	^ (activeFingers collect: [ :each | each delta ]) average