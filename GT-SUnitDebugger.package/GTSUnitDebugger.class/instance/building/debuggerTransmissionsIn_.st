debuggerTransmissionsIn: browser

	super debuggerTransmissionsIn: browser.
	
	self shouldDisplayExtraCodePane ifTrue: [ 
		browser transmit
			from: #stack port: #selection;
			to: #test;
			andShow: [ :aComposite :aContext | 
				self setUpCodeIn: aComposite.
				self tearDownCodeIn: aComposite ] ]
