mouseMove: evt
	"Handle a mouse-move event"

	| cp |
	cp := evt cursorPoint.
	self valueOfProperty: #clickPoint ifPresentDo: 
		[:firstClick |
		^self basicIsSticky ifFalse:
			[self fastFramingOn 
				ifTrue: [self doFastFrameDrag: firstClick]
				ifFalse: [evt hand grabMorph: self topRendererOrSelf]]].
	submorphs do: [:m | (m containsPoint: cp) ifTrue: [m mouseMove: evt]]