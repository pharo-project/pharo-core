printing
sharedPoolsString
	"Answer a string of my shared pool names separated by spaces."

	^String streamContents: [ :stream |
		self sharedPools 
			do: [ :each |
				stream nextPutAll: (self environment 
					keyAtIdentityValue: each 
					ifAbsent: [ 'private' ]) ]
			separatedBy: [ stream space ] ]