addTemp: name
	^ tempVars
		at: name
		put: (OCTempVariable new
				name: name;
				scope: self;
				yourself)