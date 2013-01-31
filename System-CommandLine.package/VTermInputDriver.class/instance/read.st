reading
read
	" C0 Control (Escape) mode "
	| character action |
	character := inStream next.
	character ifNil: [ Error signal: 'could not read character from input' ].
	action := normal
				at: character asInteger
				ifAbsent: [ ^ handler write: character ].
	action value