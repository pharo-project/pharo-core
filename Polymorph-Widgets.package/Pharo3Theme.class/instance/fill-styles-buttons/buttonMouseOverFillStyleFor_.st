buttonMouseOverFillStyleFor: aButton
	"Return the button mouse over fillStyle for the given color."

	(aButton valueOfProperty: #noFill ifAbsent: [false]) ifTrue: [^ SolidFillStyle color: Color transparent ].
	^ self glamorousVeryLightFillStyleFor: aButton height: aButton height