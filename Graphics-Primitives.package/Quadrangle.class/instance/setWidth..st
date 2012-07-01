bordering
setWidth: aNumber 
	"Set the receiver's width"

	self region: (origin extent: (aNumber @ self height))