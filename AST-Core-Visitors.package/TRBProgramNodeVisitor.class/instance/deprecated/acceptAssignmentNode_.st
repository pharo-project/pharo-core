acceptAssignmentNode: anAssignmentNode 
	self deprecated: 'Use visitAssignmentNode: instead' on: '29/03/2013' in: #Pharo30.	
	self visitAssignmentNode: anAssignmentNode variable.
	