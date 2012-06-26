private
clientClass
	^ Smalltalk globals at: (ClientClasses at: self scheme ifAbsent: [ ClientClasses at: 'file' ])