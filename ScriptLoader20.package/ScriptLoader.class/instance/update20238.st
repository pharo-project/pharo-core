pharo - updates
update20238
	"self new update20238"
	self withUpdateLog: 'Issue 6447:	[ENH]: #assert:equals: message should not truncate
	http://code.google.com/p/pharo/issues/detail?id=6447
	
Issue 6448:	[BUG]: TextEditorDialogWindow should Fit All Text
	http://code.google.com/p/pharo/issues/detail?id=6448
	
Issue 6485:	New spec version
	http://code.google.com/p/pharo/issues/detail?id=6485
	
 Issue 6487:	New Spec version
	http://code.google.com/p/pharo/issues/detail?id=6487
	
Issue 6489:	Better Gzip API for unzipping
	http://code.google.com/p/pharo/issues/detail?id=6489
	
Issue 6491:	Halos are broken
	http://code.google.com/p/pharo/issues/detail?id=6491
	
Issue 6492:	Make PluggableTextMorph more customizable
	http://code.google.com/p/pharo/issues/detail?id=6492
	
Issue 6493:	Integrate new version of Fuel and remove obsolete packages
	http://code.google.com/p/pharo/issues/detail?id=6493
	
Issue 6494:	Spotlight enhancement. No lose focus on tab
	http://code.google.com/p/pharo/issues/detail?id=6494
'.
	self loadTogether: self script225 merge: false.
	[ScriptLoader new deletePackage: 'FuelPackageLoader'] on: Error do: [ :e | ].
[ScriptLoader new deletePackage: 'FuelPackageLoader-Mappers'] on: Error do: [ :e | ].
[ScriptLoader new deletePackage: 'FuelPackageLoaderTests'] on: Error do: [ :e | ].
[RPackageOrganizer  default unregisterPackageNamed: #'FuelPackageLoader'] on: Error do: [ :e | ].
[RPackageOrganizer  default unregisterPackageNamed: #'FuelPackageLoader-Mappers'] on: Error do: [ :e | ].
[RPackageOrganizer  default unregisterPackageNamed: #'FuelPackageLoaderTests'] on: Error do: [ :e | ].

[ScriptLoader new deletePackage: 'FuelFileSystem'] on: Error do: [ :e | ].
[ScriptLoader new deletePackage: 'FuelFileSystemTests'] on: Error do: [ :e | ].
[RPackageOrganizer  default unregisterPackageNamed: #'FuelFileSystem'] on: Error do: [ :e | ].
[RPackageOrganizer  default unregisterPackageNamed: #'FuelFileSystemTests'] on: Error do: [ :e | ].
.
	self flushCaches.
