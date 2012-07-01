accessing
environment
	"If the receiver has not namespace assigned the default is used"
	"self class environment = Smalltalk globals"

	^environment ifNil:[ self class environment ]