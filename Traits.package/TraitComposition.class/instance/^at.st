composition
@ anArrayOfAssociations
	"the modifier operators #@ and #- bind stronger than +.
	Thus, #@ or #- sent to a sum will only affect the most right summand"

	self transformations
		addLast: (self transformations removeLast @ anArrayOfAssociations)