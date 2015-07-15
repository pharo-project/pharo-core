offsetIvarIndex
	"anser a 0-based index (for convenience to use with fetchPointer)"
	^ (self objectClass allInstVarNames indexOf: 'offset') - 1.
