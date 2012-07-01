running
runCase
	^ self packageClass 
		withOrganizer: self packageOrganizerClass new
		do: [ super runCase ]