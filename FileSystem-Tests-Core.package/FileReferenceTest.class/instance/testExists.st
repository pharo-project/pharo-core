tests
testExists

	| reference |
	reference := filesystem / 'plonk'.
	
	reference ensureFile.
	self assert: reference exists.

	reference delete.
	self deny: reference exists. 