adding/removing
addTraitNamed: traitName 
	"Creates a trait with the given name"
	| trait |
	
	trait:= self factory createTraitNamed: traitName.
	self addClass: trait