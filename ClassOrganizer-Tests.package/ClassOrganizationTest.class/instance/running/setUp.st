setUp 
	organization := ClassOrganization new. 
	
	organization addCategory: 'empty'.
	organization addCategory: 'one'.
	organization classify: #one under: 'one' suppressIfDefault: true.
	