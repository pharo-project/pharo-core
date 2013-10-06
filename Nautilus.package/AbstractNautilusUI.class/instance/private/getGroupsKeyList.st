getGroupsKeyList
	| env |
	env := self browsedEnvironment.
	^ env isSystem
		ifTrue: [ self groupsManager groups ]
		ifFalse: [ self groupsManager groups select: [:g | (g classes intersection: self model classes) isEmpty not ]]