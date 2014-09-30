updateExtent
	"Updated extent to fit label' size"
	
	labelMorph ifNotNil: [
		self extent: (self geometry calculateExtent: ((labelMorph measureContents x) @ (labelMorph height))).
	]