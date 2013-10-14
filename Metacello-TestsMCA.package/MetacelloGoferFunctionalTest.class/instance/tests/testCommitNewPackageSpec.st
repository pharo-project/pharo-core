testCommitNewPackageSpec
	| repoSpec repo project packagesNeedSaving allVersionsSize packageName |
	project := self project.
	repoSpec := self repositorySpec.
	repo := repoSpec createRepository.
	allVersionsSize := repo allVersionInfos size.
	gofer repository: repo.
	gofer 
		package: 'GoferFoo'; 
		package: 'GoferBar'; 
		metacelloLoad.
	"Create new package"
	packageName := 'GoferFaux'.
	PackageInfo registerPackageName: packageName.
	MCWorkingCopy forPackage: (MetacelloTestsMCPackage new name: packageName).
	(MCClassDefinition 
		name: (packageName copyWithout: $-) asSymbol 
		superclassName: #Object 
		category: packageName asSymbol 
		instVarNames: #() 
		comment: '') createClass.
	self assert: (packagesNeedSaving := project packagesNeedSaving: '1.0-baseline') notEmpty.
	packagesNeedSaving do: [:assoc | | gof |
		gof := Gofer new.
		gof disablePackageCache.
		gof repository: assoc value.
		gof package: assoc key name.
		gof commit: 'testing' ].
	self assert: repo allVersionInfos size = (allVersionsSize + 1)