cleaning
flushObsoletePackages: aBlock
	"Flush all packages considered obsolete by evaluating the argument block."

	packages keys do: [ :key |
		(aBlock value: (packages at: key)) ifTrue:[packages removeKey: key].
	].
	self changed: #packages; changed: #packageNames.