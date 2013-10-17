childNodeClassFromItem: anItem

	self level = 1
		ifTrue: [
			self model level = 2
				ifTrue:[^MessageListInspectableNode].
			self model level = 3
				ifTrue:[^self class]]
		ifFalse: [^MessageListInspectableNode]
