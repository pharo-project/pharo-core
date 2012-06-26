flexing
rotationDegrees: degrees
	| last delta |
	last := self lastRotationDegrees.
	delta := degrees - last.
	self rotateBy: delta.
	self lastRotationDegrees: degrees.