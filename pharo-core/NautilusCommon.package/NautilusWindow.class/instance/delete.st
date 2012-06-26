open/close
delete
	
	| mod |
	mod := self model.
	super delete.
	mod 
		ifNotNil: [ mod announce: (NautilusWindowClosed window: self) ]