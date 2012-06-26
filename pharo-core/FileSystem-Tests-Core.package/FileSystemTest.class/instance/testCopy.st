tests
testCopy
	| out in contents |
	[ 
	out := filesystem writeStreamOn: 'gooly'.
	[ out nextPutAll: 'gooly' ] ensure: [ out close ].
	filesystem copy: 'gooly' to: 'plonk'.
	in := filesystem readStreamOn: 'plonk'.
	contents := [ in contents asString ] ensure: [ in close ].
	self assert: contents = 'gooly' ]
		ensure: [ 
			filesystem
				delete: 'gooly';
				delete: 'plonk' ]