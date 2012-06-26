actions
updateDescriptionFillStyle: aColor
	"Change the colours on the descriptions."
	
	self descriptionMorph fillStyle: aColor.
	self fromDescriptionMorph owner color: (aColor alphaMixed: 0.5 with: Color white).
	self toDescriptionMorph owner color: (aColor alphaMixed: 0.3 with: Color white).