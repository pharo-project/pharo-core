removeStaleValues
	"Go over all cached values and remove those that are stale.
	Remove a collection of the keys that were removed."

	^ self critical: [
		| keysToRemove now |
		keysToRemove := OrderedCollection new.
		now := self now.
		lruList do: [ :value |
			 now - value timestamp < timeToLive 
				ifFalse: [ keysToRemove add: value key ] ].
		keysToRemove do: [ :each | self removeKey: each ].
		keysToRemove ]