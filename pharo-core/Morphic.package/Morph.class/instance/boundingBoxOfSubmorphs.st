drawing
boundingBoxOfSubmorphs
	| aBox |
	aBox := bounds origin extent: self minimumExtent.  "so won't end up with something empty"
	submorphs do:
		[:m | m visible ifTrue: [aBox := aBox quickMerge: m fullBounds]].
	^ aBox
