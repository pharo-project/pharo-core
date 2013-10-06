fullName: aString
	fullName := aString.
	
	#UserManager asClassIfPresent: [ :userManager | 
		userManager default currentUser 
			setUserName: aString
			forGroup: #author ].