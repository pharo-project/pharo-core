extent: newExtent
	"The inner bounds may have changed due to scrollbar visibility."
	| delta |
	
	super extent: newExtent.
	lockIcon ifNil: [ ^ self ].
	lockIcon extent: 16@16.
	
	self vIsScrollbarShowing
		ifTrue: [ delta := 13 ]
		ifFalse: [ delta := 0 ].
	
	lockIcon topRight: (self bounds right - 8 - delta ) @ (self bounds top + 8)