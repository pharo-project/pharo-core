flexing
rotateBy: delta
	| pt m |
	delta = 0.0 ifTrue:[^self].
	self changed.
	pt := self transformFromWorld globalPointToLocal: self referencePosition.
	m := MatrixTransform2x3 withOffset: pt.
	m := m composedWithLocal: (MatrixTransform2x3 withAngle: delta).
	m := m composedWithLocal: (MatrixTransform2x3 withOffset: pt negated).
	self transform: (transform composedWithLocal: m).
	self changed.