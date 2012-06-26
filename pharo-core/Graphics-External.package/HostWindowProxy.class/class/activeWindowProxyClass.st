system startup
activeWindowProxyClass
	"Return the concrete HostWindowProxy subclass for the platform on which we are
currently running."

	HostWindowProxy allSubclasses do: [:class |
		class isActiveHostWindowProxyClass ifTrue: [^ class]].

	"no responding subclass; use HostWindowProxy"
	^ HostWindowProxy
