example
	| m |

	m := self new.
	m openWithSpec.
	
	m roots: #(a b c d).
	m childrenBlock: [:it | it = #c 
		ifTrue: [ {1. 2. 3} ]
		ifFalse: [ {} ]].
	m displayBlock: [:item | item isSymbol
		ifTrue: [ item asUppercase , ' symbol' ]
		ifFalse: [ item printString ]].
	m 
		dragEnabled: true;
		dropEnabled: true;
		acceptDropBlock: [ :transfer :event :source :receiver |  self halt ]