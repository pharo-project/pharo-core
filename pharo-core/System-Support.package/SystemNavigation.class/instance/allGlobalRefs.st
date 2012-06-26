query
allGlobalRefs
	"Answer a set of symbols that may be refs to Global names.  In some sense we should only need the associations, but this will also catch, eg, HTML tag types."

	^ self allGlobalRefsWithout: {{}. {}}