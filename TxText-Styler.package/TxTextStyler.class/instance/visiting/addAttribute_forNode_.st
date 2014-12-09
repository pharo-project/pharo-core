addAttribute: attr forNode: node
	| start selection |
	start := text startPosition moveRight: node start-1.
	
	selection := start selectTo: (start + (node stop - node start + 1)).
	
	selection applyAttribute:  attr.