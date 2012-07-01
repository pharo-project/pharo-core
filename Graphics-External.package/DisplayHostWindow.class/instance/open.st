initialize-release
open
	"open the host window"
	windowProxy ifNil: [ windowProxy := HostWindowProxy on: self ].
	windowType ifNil: [ windowType := #defaultWindowType ].
	windowProxy perform: windowType.
	^ windowProxy open