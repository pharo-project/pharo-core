initialization
initialize
	super initialize.
	literalNames := #(#self #super #thisContext #true #false #nil)
		asIdentitySet