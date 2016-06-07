makeVersion: versionName

	| versions |
	versions := self currentVersions.

	self createConfFor: versionName with: versions.
	self createSymbolicFor: versionName.
	self copyVersions: versions.
	self commitSelfWithVersion: versionName.