at: aKey 
	"answer the object for aKey, if not present in the cache creates it.
	Clone the factory block before calling in case of multiple processes!"
	
	| element keyHash |
	calls := calls + 1.
	keyHash := aKey hash.
	1
		to: size
		do: [:index | 
			element := values at: index.
			(keyHash
						= (element at: 2)
					and: [aKey
							= (element at: 1)])
				ifTrue: ["Found!"
					hits := hits + 1.
					values
						replaceFrom: 2
						to: index
						with: (values first: index - 1).
					values at: 1 put: element.
					^ element at: 3]].
	"Not found!"
	element := {aKey. keyHash. factory shallowCopy value: aKey}.
	values
		replaceFrom: 2
		to: size
		with: values allButLast.
	values at: 1 put: element.
	^ element at: 3