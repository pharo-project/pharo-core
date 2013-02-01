accessing
labels: aLabels

	"turn labels into a simple name->offset pairs"
	aLabels keysAndValuesDo: [:name :lbl |
		labels at: name put: lbl paddedOffset ].
		