*Deprecated20
isTrunk
	self deprecated: 'unused' on:  '13 July 2012'  in: 'Pharo 2.0'.

	^ (self version allButFirst: 5) anySatisfy: [ :char | char isLetter ]