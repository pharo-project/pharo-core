function calls
cdeclCall: aBlock alignment: align

	^ self performingCall: (self newCdeclCall alignment: align) in: aBlock
