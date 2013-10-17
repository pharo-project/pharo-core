addCopyingTempNamed: name
	^ copiedVars add: (OCCopyingTempVariable new
			name: name;
			index: tempVars size;
			scope: self;
			yourself)