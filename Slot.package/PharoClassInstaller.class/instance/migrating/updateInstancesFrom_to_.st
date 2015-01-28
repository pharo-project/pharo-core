updateInstancesFrom: old to: new
	| oldInstances variable instSize newInstances |
	
	oldInstances := old allInstances asArray.
	variable := new isVariable.
	instSize := new instSize.
	newInstances := Array new: oldInstances size.
	
	1 to: oldInstances size do: [ :i |
		newInstances at: i put: (
			new newInstanceFrom: (oldInstances at: i) 
				 variable: variable 
				 size: instSize 
				 ) .].
	
	oldInstances elementsForwardIdentityTo: newInstances.