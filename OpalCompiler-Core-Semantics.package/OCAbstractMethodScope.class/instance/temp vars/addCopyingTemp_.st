addCopyingTemp: aTempVar
	^ copiedVars add: (OCCopyingTempVariable new
			originalVar: aTempVar originalVar;
			name: aTempVar name;
			index: tempVars size;
			escaping: aTempVar escaping;
			usage: aTempVar usage;
			scope: self;
			yourself)