tests
testWithFirstCharacterDownshifted

	| uc lc empty |		
	uc := #MElViN.
	lc := #mElViN.
	empty := #' '.
	self assert:  uc withFirstCharacterDownshifted = lc.
	self assert: lc withFirstCharacterDownshifted = lc.
	
