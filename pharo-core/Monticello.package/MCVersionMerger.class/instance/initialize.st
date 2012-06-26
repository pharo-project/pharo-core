as yet unclassified
initialize
	super initialize.
	records := OrderedCollection new.
	merger := MCThreeWayMerger new.