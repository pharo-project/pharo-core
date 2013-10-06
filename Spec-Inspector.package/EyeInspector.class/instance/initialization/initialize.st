initialize
	"The inspected object will be stored in the valueObject object to be able to use WhenObjectChanged:"
	
	object := nil asValueHolder.
	super initialize.
	self whenWindowChanged: [ :myWindow | myWindow whenClosedDo: [ self close ] ].