handleHit: association ifStale: block
	"In case of a hit, the cached value's timestamp is check to see if its age
	does not exceed the allowed timeToLive. If so, the stale value is recomputed."

	| link newValue |
	statistics addHit.
	link := association value.
	self promote: link.
	self now - link value timestamp < timeToLive 
		ifFalse: [ 
			newValue := block cull: association key.
			link value value: newValue ].
	^ link value value