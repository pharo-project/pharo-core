registerTo: aModel

	aModel announcer
   	 
		when: NautilusMethodSelected 
		send: #selectionChanged: 
		to: self;
	
		when: NautilusClassSelected
		send: #selectionChanged:
		to: self.
		
	ReEngine uniqueInstance announcer
		when: ReCriticBanned
		send: #criticBanned:
		to: self
	