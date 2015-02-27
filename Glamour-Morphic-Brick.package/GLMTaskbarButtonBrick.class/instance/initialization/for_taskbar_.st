for: aWindowBrick taskbar: aTaskbarMorph

	self windowBrick: aWindowBrick.
	self taskbarMorph: aTaskbarMorph.
	self invalidateWith: [ :b | b
		label: b windowBrick taskbarLabel;
		icon: b windowBrick taskbarIcon ]
		
	
	