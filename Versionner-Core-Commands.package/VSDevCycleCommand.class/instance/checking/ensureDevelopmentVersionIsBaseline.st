ensureDevelopmentVersionIsBaseline
	|  workflow devVersion |

	workflow := target.	
	devVersion := workflow developmentVersion.
	(devVersion blessing = #baseline) ifFalse: [ self createDevelopmentVersion ]