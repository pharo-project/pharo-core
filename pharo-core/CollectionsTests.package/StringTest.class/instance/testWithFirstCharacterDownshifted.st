tests - converting
testWithFirstCharacterDownshifted

	| uc lc empty |		
	uc := 'MElViN'.
	lc := 'mElViN'.
	empty := ' '.
	self assert:  uc withFirstCharacterDownshifted = lc.
	self assert: lc withFirstCharacterDownshifted = lc.
	"the string gets copied"
	self deny: lc withFirstCharacterDownshifted == lc.
	self deny: empty withFirstCharacterDownshifted == empty.