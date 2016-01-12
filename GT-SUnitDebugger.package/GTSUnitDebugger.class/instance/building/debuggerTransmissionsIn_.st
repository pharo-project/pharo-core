debuggerTransmissionsIn: browser

	super debuggerTransmissionsIn: browser.
	
	browser transmit
		from: #stack port: #selection;
		to: #test;
		andShow: [ :aComposite :aContext | 
			self setUpCodeIn: aComposite.
			self tearDownCodeIn: aComposite ]
