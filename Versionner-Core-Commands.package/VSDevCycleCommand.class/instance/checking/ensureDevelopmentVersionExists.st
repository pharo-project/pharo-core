ensureDevelopmentVersionExists
	|  workflow |

	workflow := target.	
	[ workflow developmentVersion ]
		on: MetacelloVersionDoesNotExistError
		do: [ self createDevelopmentVersion ]