genericMenu: aMenu 
	"Borrow a menu from my inspector"
	| menu |
	currentSelection
		ifNil: [menu := aMenu.
			menu
				add: '*nothing selected*'
				target: self
				selector: #yourself]
		ifNotNil: [
			aMenu addList: #(
		('Flash'						flashSelection)

								('Browse Hierarchy'				browseHierarchyOfSelection)

								('Explore View Hierarchy'						exploreViewHierarchyOfSelection)

								('Inspect'						inspectSelection)

								('Explore'						exploreSelection)).

			].
	monitorList isEmptyOrNil
		ifFalse: [aMenu addLine;
				add: 'Stop monitoring all'
				target: self
				selector: #stopMonitoring].
	^ aMenu