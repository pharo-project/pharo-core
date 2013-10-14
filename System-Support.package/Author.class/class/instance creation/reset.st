reset

	#UserManager asClassIfPresent: [ :userManager | 
		userManager default currentUser 
			setUserName: nil
			forGroup: #author ].
		
	^ uniqueInstance := nil