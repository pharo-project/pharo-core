loadMenuFor: mbInfo in: aMenu 
	"dynamic menu"
	aMenu target: self.
	((mbInfo commands collect: [ :commandClass |commandClass target: mbInfo for: (versionList selectedItem)])
		asArray sort: [:a :b | a order <= b order ]) 
			do: [:cmd | aMenu add: cmd title 
							    target: [	cmd execute ]
							    selector:#value.].
	^ aMenu.