running
execute: aWorkingCopy
	| version |
	version := aWorkingCopy newVersion.
	self gofer repositories
		do: [ :repository | repository storeVersion: version ]