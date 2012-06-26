initialization
initialize
	"Initialization code for SpecDescription"

	super initialize.

	adds := OrderedCollection new asValueHolder.
	selector := #defaultSpec.
	extra := ''.