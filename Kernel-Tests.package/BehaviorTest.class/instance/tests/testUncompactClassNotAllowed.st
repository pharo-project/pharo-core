testUncompactClassNotAllowed
	"As explained in Behavior >> #checkCanBeUncompact certain classes cannot be uncompact, like Array"
	self skip.
	self should: [Array becomeUncompact] raise: Error.