initialization
howToGetClassesNotRegisteredInStartups

	| classes startClassNames stopClassNames |
	classes := ((SystemNavigation default allCallsOn:
#'addToStartUpList:') collect: [ :e | e methodClass ]),
((SystemNavigation default allCallsOn: #'addToStartUpList:after:')
collect: [ :e | e methodClass ]).
startClassNames := classes collect: [ :n | n instanceSide name ].
(Smalltalk class classVarNamed: 'StartUpList') do: [ :s |
	startClassNames remove: s ifAbsent: [] ].


classes := ((SystemNavigation default allCallsOn:
#'addToShutDownList:') collect: [ :e | e methodClass ]),
((SystemNavigation default allCallsOn: #'addToShutDownList:after:')
collect: [ :e | e methodClass ]).
stopClassNames := classes collect: [ :n | n instanceSide name ].
(Smalltalk class classVarNamed: 'ShutDownList') do: [ :s |
	stopClassNames remove: s ifAbsent: [] ].

((startClassNames, stopClassNames) asSet asSortedCollection remove: #InputEventSensor ; yourself)
	"do: [:each | (Smalltalk at: each) initialize] does not work because of dependencies"