*Deprecated20
labelAt: aSystemProgressItemMorph put: aString
	"Change the label for the given progressBlock to aString."
	self deprecated: 'Send #label: directly to the progress item itself' on: '22 May 2012' in: 'Pharo 2.0'.
	
	aSystemProgressItemMorph label: aString.
	self recenter.