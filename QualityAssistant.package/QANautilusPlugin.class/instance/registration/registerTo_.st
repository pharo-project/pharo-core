registerTo: aModel

	aModel announcer weak
		when: NautilusPackageSelected  send: #otherSelected:  to: self;
 		when: NautilusClassSelected    send: #classSelected:  to: self; 
		when: NautilusProtocolSelected send: #otherSelected:  to: self; 	 
		when: NautilusMethodSelected   send: #methodSelected: to: self.
		
	ReEngine uniqueInstance announcer weak
		when: ReCriticBanned
		send: #criticBanned:
		to: self
	