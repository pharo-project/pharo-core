resolvePackageSpecsNamedForMetacelloMCVersion: aMetacelloMCVersion visited: visited ifAbsent: aBlock 

	^ aMetacelloMCVersion
		allPackagesForSpecs: (self collect: [:ea | 
			aMetacelloMCVersion spec packageNamed: ea ifAbsent: aBlock])
		visited: visited