as yet unclassified
preorder: aReference
	^ self visit: aReference with: (PreorderGuide for: self)