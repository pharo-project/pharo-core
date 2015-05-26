newAnonymousSubclass
	^ AnonymousClassInstaller make: [ :builder |
		builder
			superclass: self ;
			layoutClass: self layout class ].
