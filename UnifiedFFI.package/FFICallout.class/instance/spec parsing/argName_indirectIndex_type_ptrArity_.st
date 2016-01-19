argName: argName indirectIndex: anIndex type: typeName ptrArity: ptrArity
	| type |
	argName
		ifNil: [
			"allow nil,true,false as untyped arguments"
			typeName = 'nil'
				ifTrue: [ ^ FFIConst value: 0 type: (self resolveExternalType:  #uint32)].
			typeName = 'false'
				ifTrue: [ ^ FFIConst value: 0 type: (self resolveExternalType:  #bool)].
			typeName = 'true'
				ifTrue: [ ^ FFIConst value: 1 type: (self resolveExternalType:  #bool)].
			ptrArity > 0
				ifTrue: [ self error: 'missing argument name' ].	"lone self"
			typeName = 'self'
				ifTrue: [ ^ (requestor asExternalTypeOn: self) loader: self receiverArgumentLoader ].
			^ self resolveType: typeName ].
	type := self typeName: typeName pointerArity: ptrArity.
	type loader: (self loaderForArgNamed: argName indirectIndex: anIndex).
	^ type