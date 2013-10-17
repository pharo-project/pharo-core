adoptVersionInfoFrom: anInstaller
	|viCache|
	viCache := Dictionary new.
	anInstaller versionInfo keysAndValuesDo: [:packageName :info |
		(self forPackage: (MCPackage named: packageName))
			versionInfo: (self infoFromDictionary:  info cache: viCache)].
	[anInstaller clearVersionInfo] on: Error do: ["backwards compat"].