testIntCase4ExternalAddress 
	"
		see case4 for details
	"
	
	| address |
	
	address := NBExternalAddress value: 12345.
		
	self assert: (self readIntPtrCase4:  address ) equals: address value

