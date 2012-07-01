initialization
initialize
	"Initialization code for NautilusBreadcrumbsPlugin"

	super initialize.

	classButton := nil.
	container := PanelMorph new
					changeTableLayout;
					listDirection: #rightToLeft;
					hResizing: #spaceFill;
					vResizing: #rigid;
					addMorph: self hFill;
					height: 25.
	methodButton := nil.
	packageButton := nil.
	protocolButton := nil.