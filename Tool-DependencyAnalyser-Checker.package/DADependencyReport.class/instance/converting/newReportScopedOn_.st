newReportScopedOn: aPackageName
	"Generates a new dependency report discarding all packages that are not present in aPackageName transitive dependencies"
	| report dependenciesToInclude |
	report := self class new.
	report
		imageVersion: imageVersion; 
		analysisRunString: analysisRunString , ' scoped on ' , aPackageName.
	dependenciesToInclude := self transitiveDependenciesOf: aPackageName.
	warnings 
		select: [:warning | dependenciesToInclude includes: warning package ]
		thenDo: [:warning | report addWarning: warning ].
	dependencies associationsDo: [ :assoc |
		(dependenciesToInclude includes: assoc key)
			ifTrue: [ report 
							add: assoc key 
							dependencies: assoc value ] ].
	^ report