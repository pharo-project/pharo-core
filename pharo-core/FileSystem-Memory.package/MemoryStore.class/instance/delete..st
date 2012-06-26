public
delete: path
	self nodeAt: path parent ifPresent: [ :dict | dict removeKey: path basename ] ifAbsent: [  ]