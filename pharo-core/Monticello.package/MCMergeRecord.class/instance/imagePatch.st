as yet unclassified
imagePatch
	^ imagePatch ifNil: [imagePatch := self packageSnapshot patchRelativeToBase: self ancestorSnapshot]