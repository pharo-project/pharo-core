testCleanUpChangeSets
	"excess change sets can cause a noticeable slow down in monticello performance, so this test just cleans them up"
	
	| removals set|
	(ChangeSet respondsTo: #allChangeSets) ifFalse: [ ^self ].
	removals := OrderedCollection new.
	(set := ChangeSet perform: #allChangeSets) do: [:cs |
		(cs name beginsWith: 'MC')
			ifTrue: [
				cs name size >= 3
					ifTrue: [ | post |
						post := cs name copyFrom: 3 to: cs name size.
						post asInteger printString = post 
							ifTrue: [ removals add: cs ]]]].
	removals do: [:cs | set remove: cs ].
	removals := OrderedCollection new.
	(set := ChangeSet perform: #allChangeSets) do: [:cs |
		((cs name beginsWith: 'GoferBar') 
			or: [ (cs name beginsWith: 'GoferFoo')
				or: [ (cs name beginsWith: 'GoferFaux')
					or: [ (cs name beginsWith: 'GoferBeau')
						or: [ (cs name beginsWith: 'MetacelloTestConfiguration')]]]])
			ifTrue: [removals add: cs ]].
	removals do: [:cs | set remove: cs ].
