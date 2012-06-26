meta-actions
potentialEmbeddingTargets
	"Return the potential targets for embedding the receiver"

	| oneUp topRend |
	(oneUp := (topRend := self topRendererOrSelf) owner) ifNil:[^#()].
	^ (oneUp morphsAt: topRend referencePosition behind: topRend unlocked: true) select:
		[:m | m  isFlexMorph not]