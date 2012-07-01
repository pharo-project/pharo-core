private
validateIntegerRange
	fwDx class == SmallInteger ifFalse:[self halt].
	fwDy class == SmallInteger ifFalse:[self halt].
	fwDDx class == SmallInteger ifFalse:[self halt].
	fwDDy class == SmallInteger ifFalse:[self halt].
