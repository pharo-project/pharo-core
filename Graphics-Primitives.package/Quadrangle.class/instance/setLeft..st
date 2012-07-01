bordering
setLeft: aNumber 
	"Move the receiver so that its left edge is given by aNumber.  An example of a setter to go with #left"

	self region: ((aNumber @ origin y) extent: self extent)