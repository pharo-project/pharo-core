onLinkNode: aNode arguments: arguments
	aNode arguments with: arguments do: [ :key :value | 
		self at: key name put: value ]