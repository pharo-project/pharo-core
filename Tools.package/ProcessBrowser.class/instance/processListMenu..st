process list
processListMenu: menu
	| pw |
	selectedProcess
		ifNotNil: [ 
			| nameAndRules |
			nameAndRules := self nameAndRulesForSelectedProcess.
			menu
				addList:
					{{'Inspect (i)'.
					#inspectProcess}.
					{'Explore (I)'.
					#exploreProcess}.
					{'Inspect Pointers (P)'.
					#inspectPointers}}.
			(Smalltalk globals includesKey: #PointerExplorer)
				ifTrue: [ menu add: 'Explore pointers (e)' action: #explorePointers ].
			nameAndRules second
				ifTrue: [ 
					menu add: 'Terminate (t)' action: #terminateProcess.
					selectedProcess isSuspended
						ifTrue: [ menu add: 'Resume (r)' action: #resumeProcess ]
						ifFalse: [ menu add: 'Suspend (s)' action: #suspendProcess ] ].
			nameAndRules third
				ifTrue: [ 
					menu
						addList:
							{{'Change priority (p)'.
							#changePriority}.
							{'Debug (d)'.
							#debugProcess}} ].
			menu
				addList:
					{{'Profile messages (m)'.
					#messageTally}}.
			(selectedProcess suspendingList isKindOf: Semaphore)
				ifTrue: [ menu add: 'Signal Semaphore (S)' action: #signalSemaphore ].
			menu add: 'Full stack (k)' action: #moreStack.
			menu addLine ].
	menu
		addList:
			{{'Find context... (f)'.
			#findContext}.
			{'Find again (g)'.
			#nextContext}}.
	menu addLine.
	menu
		add:
			(self isAutoUpdating
				ifTrue: [ 'Turn off auto-update (a)' ]
				ifFalse: [ 'Turn on auto-update (a)' ])
		action: #toggleAutoUpdate.
	menu add: 'Update list (u)' action: #updateProcessList.
	pw := Smalltalk globals at: #CPUWatcher ifAbsent: [  ].
	pw
		ifNotNil: [ 
			menu addLine.
			pw isMonitoring
				ifTrue: [ menu add: 'Stop CPUWatcher' action: #stopCPUWatcher ]
				ifFalse: [ menu add: 'Start CPUWatcher' action: #startCPUWatcher ] ].
	^ menu