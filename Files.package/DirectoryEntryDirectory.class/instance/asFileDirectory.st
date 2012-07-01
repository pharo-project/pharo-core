convert
asFileDirectory
	"Answer a FileDirectory representing the same directory I represent."
	^ self containingDirectory in: [ : cd | cd on: (cd fullNameFor: self name) ]