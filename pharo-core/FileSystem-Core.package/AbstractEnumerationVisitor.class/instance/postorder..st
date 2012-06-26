as yet unclassified
postorder: aReference
	^ self visit: aReference with: (PostorderGuide for: self)