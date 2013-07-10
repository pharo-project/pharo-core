private
execute: anOperationClass do: aBlock
	"Ensure that all repositories have a chance to cache file names during the gofer operation."

	| operation recursion |
	recursion := [ :repos | 
	repos notEmpty
		ifTrue: [ repos first cacheAllFileNamesDuring: [ recursion value: repos allButFirst ] ]
		ifFalse: [ 
			operation := anOperationClass on: self copy.
			aBlock isNil
				ifFalse: [ aBlock value: operation ].
			operation execute ] ].
	^ recursion value: repositories