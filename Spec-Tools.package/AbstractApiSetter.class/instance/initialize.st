initialize
initialize
	"Initialization code for BooleanApiSetter"

	
	method := nil asValueHolder.
	model := nil asValueHolder.
	retrievingMethod := nil asValueHolder.
	isSetting := false.
	
	super initialize.
	self registerEvents