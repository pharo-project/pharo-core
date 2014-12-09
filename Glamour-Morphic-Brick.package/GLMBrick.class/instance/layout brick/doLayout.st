doLayout
	"most of the time you don't want to call this method manually"
	"nice example to check is GLMLabelBrick>>doLayout"
	
	self layoutPolicy layout: self in: self bounds.
	
	subbricks do: [ :each | each isBrick ifTrue: [ each doLayout ] ]
	