accessing
updateButton
	^updateButton ifNil: [
		updateButton := (self
			newButtonFor: self
			action: #updateButtonClicked
			label: 'Update' translated
			help: 'Click here to rescan Font Folder and update the font list' translated)
			hResizing: #spaceFill]