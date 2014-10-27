example
	"MenuMorph example openInHand"
	<example>
	
	| menu |
	menu := MenuMorph new.
	menu addStayUpItem.
	menu add: 'apples' selector: #apples.
	menu add: 'oranges' selector: #oranges.
	menu addLine.
	menu addLine.  "extra lines ignored"
	menu add: 'peaches' selector: #peaches.
	menu addLine.
	menu add: 'pears' selector: #pears.
	menu addLine.
	^ menu
