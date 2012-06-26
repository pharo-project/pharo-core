initialize-release
open
	"open a host window built around my position, size and bitmap"
	windowHandle
		ifNil: [sourceForm
				ifNotNil:[windowHandle := self
						primitiveCreateHostWindowWidth: self width
						height: self height
						originX: self offset x
						y: self offset y
						attributes: self attributes.
						windowHandle ifNotNil:[self register].
						^windowHandle]]