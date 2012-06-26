accessing
resolveRelativeURI: aURI
	| relativeURI newAuthority newPath pathParts newURI relComps |
	relativeURI := aURI asURI.

	relativeURI isAbsolute
		ifTrue: [^relativeURI].

	relativeURI authority
		ifNil: [
			newAuthority := self authority.
			(relativeURI path beginsWith: '/')
				ifTrue: [newPath := relativeURI path]
				ifFalse: [
					pathParts := (self path copyUpToLast: $/) findTokens: $/.
					relComps := relativeURI pathComponents.
					relComps removeAllSuchThat: [:each | each = '.'].
					pathParts addAll: relComps.
					pathParts removeAllSuchThat: [:each | each = '.'].
					self removeComponentDotDotPairs: pathParts.
					newPath := self buildAbsolutePath: pathParts.
					((relComps isEmpty
						or: [relativeURI path last == $/ 
						or: [(relativeURI path endsWith: '/..')
						or: [relativeURI path = '..'
						or: [relativeURI path endsWith: '/.' ]]]])
						and: [newPath size > 1])
						ifTrue: [newPath := newPath , '/']]]
		ifNotNil: [
			newAuthority := relativeURI authority.
			newPath := relativeURI path].

	newURI := String streamContents: [:stream |
		stream nextPutAll: self scheme.
		stream nextPut: $: .
		newAuthority notNil
			ifTrue: [
				stream nextPutAll: '//'.
				newAuthority printOn: stream].
		newPath notNil
			ifTrue: [stream nextPutAll: newPath].
		relativeURI query notNil
			ifTrue: [stream nextPutAll: relativeURI query].
		relativeURI fragment notNil
			ifTrue: [
				stream nextPut: $# .
				stream nextPutAll: relativeURI fragment]].
	^newURI asURI