areasRemainingToFill: aRectangle
	| areas |
	(areas := super areasRemainingToFill: aRectangle) isEmpty
		ifTrue: [^ areas "good news -- complete occlusion"].
	"Check for special case that this is scrollbar damage"
	((bounds topLeft - (14@0) corner: bounds bottomRight) containsRect: aRectangle) ifTrue:
		[paneMorphs do: [:p | (p isKindOf: ScrollPane) ifTrue: [^ Array new]]].
	^ areas