*rpackage-core
packageWrapper
	| package tag |
	
	package := self package.
	tag := package classTags detect: [:e | (package classesForClassTag: e) includes: self name ] ifNone: [ package name ].
	
	^ PackageTagWrapper 
		package: package
		tag: tag	