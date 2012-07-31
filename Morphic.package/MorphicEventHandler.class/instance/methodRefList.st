access
methodRefList
	"Return a MethodReference for each message I can send. tk 9/13/97, raa 
	5/29/01 "
	| list |
	list := OrderedCollection new.
	subscriptions do: [ :s | 
		s recipient ifNotNil: [list
						add: (RGMethodDefinition
								realClass: (s recipient class whichClassIncludesSelector: s selector)
								selector: s selector)]
		].
	^ list