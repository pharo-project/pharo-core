numberOfVisibleChildren
	^ self isExpanded
		ifTrue: [ self children size + (self children collect: [ :item | item numberOfVisibleChildren ]) sum ]
		ifFalse: [ 0 ]