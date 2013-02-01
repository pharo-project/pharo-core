accessing
undefinedLabels

	"answer a collection of labels, which having no defined position "
	| lbls |
	lbls := OrderedCollection new.
	
	labels keysAndValuesDo: [:key :value |
		value ifNil: [ lbls add: key]	
	].
	^ lbls