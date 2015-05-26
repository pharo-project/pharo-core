gtInspectorItems
	^ OrderedCollection
		 with: (#eventTimestamp -> self timestamp) withAll: self associations