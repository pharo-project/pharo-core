calculateInnerCommentsSize: aNode
	| innerCommentsSize |
	innerCommentsSize := 0.
	aNode comments
		do: [ :each | 
			each first > aNode start
				ifTrue: [ innerCommentsSize := innerCommentsSize + each size + 1 ] ].
	^ innerCommentsSize