*Tools
offerMenuFrom: menuRetriever shifted: aBoolean 
	"Pop up a menu whose target is
	the receiver and whose contents are provided by sending the
	menuRetriever to the receiver. The menuRetriever takes two arguments:
	a menu, and a boolean representing the shift state."
	| aMenu |
	aMenu := UIManager default newMenuIn: self for: self.
	self
		perform: menuRetriever
		with: aMenu
		with: aBoolean.
	aMenu popUpInWorld