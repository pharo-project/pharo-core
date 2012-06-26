instance creation
initialize
	super initialize.
	types := OrderedCollection new.
	hasSend := false.
	contextCount := 0