tests
testRoundTripFILE
	"File URLs should round-trip OK. This test should ultimately be
	tested on all platforms."

	| file |
	file :=  '/xxx.st' asFileReference.
	url := file asUrl.
	self assert: (url pathForFile = file) description: 'fileName didn''t round-trip'.