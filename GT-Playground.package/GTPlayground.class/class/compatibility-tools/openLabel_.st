openLabel: aLabel
	| page |

	page := GTPlayPage new
		title: aLabel;
		yourself.
	^ self new openOn: page