browseVersionsOf: method
	
	^ self new 
			browseVersionsOf: method 
			class: method methodClass 
			meta: method methodClass isMeta
			category: method protocol
			selector: method selector