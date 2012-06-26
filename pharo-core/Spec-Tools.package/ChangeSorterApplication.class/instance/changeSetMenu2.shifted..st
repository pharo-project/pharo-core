menu
changeSetMenu2: aMenu shifted: isShifted 
	"Set up aMenu to hold commands for the change-set-list pane.  This could be for a single or double changeSorter"
	| cs |
	
	cs := self selectedChangeSet.
	self selectedChangeSet
		ifNotNil:[
			(cs notNil and: [ cs hasPreamble ])
				ifTrue: [
							aMenu add: 'Edit preamble (p)' action: #addPreamble.
							aMenu add: 'Remove preamble' action: #removePreamble	]
				ifFalse: [	aMenu add: 'Add preamble (p)' action: #addPreamble			].
			(cs notNil and: [ cs hasPostscript ])
				ifTrue: [	
							aMenu add: 'Edit postscript...' action: #editPostscript.
							aMenu add: 'Remove postscript' action: #removePostscript	]
				ifFalse: [	aMenu add: 'Add postscript...' action: #editPostscript			].

			aMenu addLine.

			aMenu add: 'Destroy change set (x)' action: #remove ].