as yet unclassified
base: aSnapshot target: targetSnapshot ancestor: ancestorSnapshot
	^ self base: aSnapshot patch: (targetSnapshot patchRelativeToBase: ancestorSnapshot)