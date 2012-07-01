accessing
at: row at: column incrementBy: value
	"Array2D>>at:at:add: was the origin of this method, but in Smalltalk add:
	 generally suggests adding an element to a collection, not doing a sum.
	 This method, and SequenceableCollection>>at:incrementBy: that supports
	 it, have been renamed to reveal their intention more clearly."

	^contents at: (self indexForRow: row andColumn: column) incrementBy: value