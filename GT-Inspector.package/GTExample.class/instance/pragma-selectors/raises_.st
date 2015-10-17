raises: aClassOrClassName
	self classNamed: aClassOrClassName do: [ :class | 
		self exceptions add: class ]