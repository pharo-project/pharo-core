bordering
setRight: aNumber 
	"Move the receiver so that its right edge is given by aNumber.  An example of a setter to go with #right"

	self region: ((origin x + (aNumber - self right) @ origin y) extent: self extent)