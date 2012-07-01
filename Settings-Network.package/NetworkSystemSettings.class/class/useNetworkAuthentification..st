settings
useNetworkAuthentification: aBoolean
	UseNetworkAuthentification = aBoolean ifTrue: [^ self].
	UseNetworkAuthentification := aBoolean.
	self useNetworkAuthentification 
		ifTrue: [HTTPSocket proxyUser: self proxyUser password: self proxyPassword]
		ifFalse: [HTTPSocket proxyUser: '' password: '']