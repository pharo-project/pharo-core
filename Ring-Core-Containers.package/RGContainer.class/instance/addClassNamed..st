adding/removing
addClassNamed: className 
	"Creates a class with the given name"
	| cls |
	
	cls:= self factory createClassNamed: className.
	self addClass: cls