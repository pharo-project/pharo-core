initialize
	super initialize.
	
	"My height is the height of the tallest subbrick"
	self height: [ (self subbricks detectMax: [ :each | each height ]) ifNil: [ 0 ] ifNotNil: [ :brick | brick height ] ]