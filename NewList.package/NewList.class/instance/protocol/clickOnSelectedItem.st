clickOnSelectedItem
	| item |

	item := self itemAtIndex: self selectedIndex.
	(item respondsTo: #click:)
		ifTrue: [ item click: MouseEvent new ]