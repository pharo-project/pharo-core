mouseMove: evt
	"Handle a mouse-move event"

	| cp |
	cp := evt cursorPoint.
	self valueOfProperty: #clickPoint ifPresentDo: 
		[:firstClick |
		((self labelRect containsPoint: firstClick) and: [(cp dist: firstClick) > 3]) ifTrue:
		["If this is a drag that started in the title bar, then pick me up"
		^self basicIsSticky ifFalse:
			[self fastFramingOn 
				ifTrue: [self doFastFrameDrag: firstClick]
				ifFalse: [evt hand grabMorph: self topRendererOrSelf]]]].
	submorphs do: [:m | (m containsPoint: cp) ifTrue: [m mouseMove: evt]]