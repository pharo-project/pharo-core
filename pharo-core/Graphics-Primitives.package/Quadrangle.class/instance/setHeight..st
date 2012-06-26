bordering
setHeight: aNumber 
	"Set the receiver's height"

	self region: (origin extent: (self width @ aNumber))