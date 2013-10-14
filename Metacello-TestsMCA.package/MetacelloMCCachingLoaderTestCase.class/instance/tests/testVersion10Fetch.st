testVersion10Fetch

	| project version repo map pkgSpecs |
	project := self project.
	version := project version: '1.0'.
	repo := version loaderPolicy cacheRepository.
	self assert: repo allVersionInfos isEmpty.
	version fetch: #('default').
	self deny: repo allVersionInfos isEmpty.
	map := Dictionary new.
	(Gofer new allResolvedIn: repo) do: [:resolvedRef | map at: resolvedRef name put: resolvedRef ].
	pkgSpecs := version packages.
	self assert: map size = pkgSpecs size.
	pkgSpecs do: [:pkgSpec | map at: pkgSpec file ifAbsent: [ self assert: false ]].
		