initialize
initialize
	"Initialization code for SpecLayoutAdd"

	super initialize.
	self selector: #add:.
	layoutFrame := LayoutFrame identity.
	subwidget := nil.