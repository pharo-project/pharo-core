drag and drop
dropItem: anObject at: index
	"Drop an item at the given index."

	self list
		remove: anObject;
		add: anObject beforeIndex: index.
	self
		changed: #list;
		changed: #listOrder