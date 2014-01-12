at: key ifAbsentPut: block
	"Overwritten - see the comment of the method that I overwrite.
	In case of a hit, the cached value's timestamp is checked to see if its age
	does not exceed the allowed timeToLive. If so, the stale value is recomputed."
	
	self critical: [
		| association |
		association := keyIndex 
			associationAt: key 
			ifAbsent: [ 
				| value newAssociation |
				value := block cull: key.
				newAssociation := TTLAssociation key: key value: value.
				^ self handleMiss: newAssociation ].
		^ self handleHit: association ifStale: block ]