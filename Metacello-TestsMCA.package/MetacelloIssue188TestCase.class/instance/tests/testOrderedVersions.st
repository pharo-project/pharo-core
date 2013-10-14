testOrderedVersions

	| versions |
	versions := self project versions sorted collect: [:each | each versionString].
	self assert: versions = #('0.9' '1.0-a' '1.0-b' '1.0-baseline' '1.0')