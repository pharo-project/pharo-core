menu
classMenu: aMenu shifted: shifted from: src to: dest
	"Fill aMenu with items appropriate for the class list"

	src selectedClass ifNil: [ ^ nil ].
	aMenu target: self.
	aMenu
			add: 'Copy class to the other change set(c)' 
			selector: #copyClassFrom:to:
			argumentList: {src.dest}.
	aMenu
			add: 'Move class to the other change set' 
			selector: #moveClassFrom:to:
			argumentList: {src.dest}.
	aMenu addLine.
						
	src classMenu: aMenu shifted: shifted.
	^ aMenu