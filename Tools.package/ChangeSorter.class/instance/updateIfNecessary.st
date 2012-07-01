changeset menu
updateIfNecessary
	"Recompute all of my panes."

	| newList |
	self okToChange ifFalse: [^ self].
	myChangeSet ifNil: [^ self].  "Has been known to happen though shouldn't"
	myChangeSet isMoribund ifTrue:
		[self changed: #changeSetList.
		^ self showChangeSet: ChangeSet current].

	newList := self changeSetList.

	(priorChangeSetList == nil or: [priorChangeSetList ~= newList])
		ifTrue:
			[priorChangeSetList := newList.
			self changed: #changeSetList].
	self showChangeSet: myChangeSet