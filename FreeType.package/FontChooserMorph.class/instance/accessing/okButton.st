okButton
	^okButton ifNil: [
		okButton := (self
			newButtonFor: self
			action: #okButtonClicked
			label: 'OK' translated
			help: 'Click here to close this dialog, and accept your selection' translated)
			hResizing: #spaceFill]