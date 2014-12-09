replaceBigs: aClass with: anOtherClass
	"self replaceBigs: WeakSet with: WeakHashSet"
	| new |
	(aClass allInstances select: [ :each | each size > 4000 ]) do: [ :each |
		new := anOtherClass new.
		new addAll: each.
		new become: each ].