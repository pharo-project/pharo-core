openLabel: aLabel
	| page |

	page := GTPlaygroundPage new
		title: aLabel;
		yourself.
	^ self new openOn: page