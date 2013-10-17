addTemp: name
	^ tempVars add: (OCTempVariable new
			name: name;
			index: tempVars size;
			scope: self;
			yourself)