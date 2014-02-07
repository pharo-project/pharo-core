project: anMTProject
	project := anMTProject.
	packagesList roots: self packages.
	project ifNotNil: 
		[ project announcer weak 
			on: MTProjectModelChanged
			send: #refreshPackages
			to: self ].