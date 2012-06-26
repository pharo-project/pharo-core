*Graphics-Display Objects
displayOnPort: aPort at: p
	"Display the border and insideRegion of the receiver."

	(insideColor == nil or: [borderWidth <= 0])
		ifFalse: [aPort fill: (self region translateBy: p) 
			fillColor: borderColor rule: Form over].
	insideColor == nil
		ifFalse: [aPort fill: (self inside translateBy: p) 
			fillColor: insideColor rule: Form over]