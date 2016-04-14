testMethodIconIsActionHandled

	| methodIconActions |
	
	"Test that every method in the system works for every implementation of #isActionHandled"
	
	methodIconActions := AbstractMethodIconAction allSubclasses collect: [ :cls | cls new ].
	
	ProtoObject withAllSubclassesDo: [ :class |
		
		class methods do: [ :method | methodIconActions do: [ :mia | mia method: method; isActionHandled ] ]
		
	]