testing - examples
testExample3

	"This is the third example from the specification document (FIPS PUB 180-1). 
	This example may take several minutes."

	hash := SecureHashAlgorithm new hashMessage: (String new: 1000000 withAll: $a).
	self assert: (hash = 16r34AA973CD4C4DAA4F61EEB2BDBAD27316534016F).