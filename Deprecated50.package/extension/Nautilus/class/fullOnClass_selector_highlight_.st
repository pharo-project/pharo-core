fullOnClass: class selector: selector highlight: autoSelectString
	| nautilus |
	self deprecated: 'use openOnClass:selector:highlight:' on: ' 11 August 2015' in: 'Pharo5'.
	nautilus := self openOnClass: class selector: selector.
	autoSelectString ifNotNil: [ nautilus ui highlight: autoSelectString ]