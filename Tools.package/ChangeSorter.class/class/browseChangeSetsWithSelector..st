browse
browseChangeSetsWithSelector: aSelector
	"Put up a list of all change sets that contain an addition, deletion, or change of any method with the given selector"

	| hits index |
	hits := ChangeSet allChangeSets select: 
		[:cs | cs hasAnyChangeForSelector: aSelector].
	hits isEmpty ifTrue: [^ self inform: aSelector , '
is not in any change set'].
	index := hits size = 1
		ifTrue:	[1]
		ifFalse:	[(UIManager default chooseFrom: (hits collect: [:cs | cs name])
					lines: #())].
	index = 0 ifTrue: [^ self].
	(ChangeSetBrowser new myChangeSet: (hits at: index)) open

"ChangeSorter browseChangeSetsWithSelector: #clearPenTrails"
