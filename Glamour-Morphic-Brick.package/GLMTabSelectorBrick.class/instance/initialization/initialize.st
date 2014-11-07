initialize
	"Initialize the receiver."

	super initialize.
	selectedIndex := 0.
	self
		tabs: OrderedCollection new;
		roundedCorners: #(1 4);
		borderWidth: 0.