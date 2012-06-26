registration
addRegistryMenuItemsTo: aMenu inAccountOf: aBrowser 
	"Add some useful options related Browser registry to the
	browsers windows menu"
	aMenu addLine;
		add: 'Register this Browser as default'
		target: [self default: aBrowser class]
		action: #value;
		add: 'Choose new default Browser'
		target: self
		action: #askForDefault