unimplemented
	"Answer an Array of each message that is sent by an expression in a method but is not implemented by any object in the system."
	
	| all unimplemented |
	all := IdentitySet new.
	self allBehaviorsDo: [:cl | cl selectorsDo: [:aSelector | all add: aSelector]].

	unimplemented := IdentityDictionary new.
	self allBehaviorsDo: [:cl |
		 cl selectorsAndMethodsDo: [:sel :meth |
			meth messages do: [:m | | entry |
				(all includes: m) ifFalse: [
					entry := unimplemented at: m ifAbsent: [Array new].
					entry := entry copyWith: (cl name, '>', sel).
					unimplemented at: m put: entry]]]].
	^ unimplemented
