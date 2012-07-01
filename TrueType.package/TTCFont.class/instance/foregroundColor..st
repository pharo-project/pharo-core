initialize
foregroundColor: fgColor
	"Install the given foreground color"
	foregroundColor = fgColor ifFalse:[
		foregroundColor := fgColor.
		colorToCacheMap ifNil:[colorToCacheMap := Dictionary new].
		cache := colorToCacheMap at: fgColor ifAbsentPut:[WeakArray new: 256].
		ShutdownList ifNotNil:[ShutdownList add: self].
	].
