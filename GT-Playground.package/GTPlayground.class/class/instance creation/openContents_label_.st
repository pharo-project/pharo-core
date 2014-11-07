openContents: aString label: aLabel
	"Open a new playground with the given contents"

	| page |

	page := GTPlayPage new
		content: aString;
		title: aLabel;
		yourself.
	^ self new openOn: page