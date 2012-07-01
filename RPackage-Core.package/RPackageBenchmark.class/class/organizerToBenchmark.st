as yet unclassified
organizerToBenchmark
	"self organizerToBenchmark"
	OrganizerToBenchmark 
		ifNil: [ OrganizerToBenchmark := RPackageOrganizer new initializeFromSystem].
	^ OrganizerToBenchmark