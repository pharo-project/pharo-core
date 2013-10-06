pushVisit: aReference 
	self push: (Message 
				selector: #visit:
				argument: aReference)