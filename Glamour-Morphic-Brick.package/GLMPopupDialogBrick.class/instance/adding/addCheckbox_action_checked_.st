addCheckbox: aString action: aBlock checked: aBoolean
	^ self addContentBrick: (
				GLMCheckboxBrick new 
					text: aString;
					check: aBoolean;
					action: aBlock;
					yourself)