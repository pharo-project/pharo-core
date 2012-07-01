settings
debugSettingsOn: aBuilder
	<systemsettings>
	(aBuilder group: #debugging)
		label: 'Debugging';
		with: [
			(aBuilder group: #deprecationHandling)
				label: 'Deprecation handling' translated;
				description: 'How deprecation are handled' translated;
				target: Deprecation;
				with: [
					(aBuilder setting: #raiseWarning)
						label: 'Raise a blocking dialog' translated;
						description: 'If true, then a dialog is popup for each deprecated method invocation' translated.
					(aBuilder setting: #showWarning)
						label: 'Transcript message' translated;
						description: 'If true, then a message is send to the Transcript for each deprecated method invocation' translated].
			
			(aBuilder setting: #cmdDotEnabled)
				label: 'Enable cmd-dot interrupt key' translated;
				target: UserInterruptHandler;
				description: 'If true, it allows the user to stop currently running process by opening-up a debugger' translated.
			
			(aBuilder setting: #cpuWatcherEnabled)
				label: 'Process browser monitors CPU usage' translated;
				target: CPUWatcher;
				description: 'If true, Pharo processes will be monitored for CPU usage. If they take too much CPU, you will get a notification menu that will allow you to debug, resume, or terminate the process' translated.
			
			(aBuilder setting: #debugShowDamage)
				label: 'Flash damaged morphic region' translated;
				target: WorldState;
				description: 'If true, every changed region of the morphic display will be flashed black before updating.' translated.
			
			(aBuilder setting: #logDebuggerStackToFile)
				label: 'Write message to debug log file when fall into debugger' translated;
				target: Debugger;
				description: 'If true, whenever you fall into a debugger a summary of its stack will be written to a file named' translated.
			
			(aBuilder setting: #restartAlsoProceeds)
				label: 'Restart also proceeds' translated;
				target: Debugger;
				description: 'If this preference is set, the debugger''s restart button and menu item will also proceed. If the preference is not set, the selected context will just be reset to its initial condition, so you may step through it again.' translated.
				
			(aBuilder setting: #alwaysOpenFullDebugger)
				label: 'Directly open the full Debugger' translated;
				target: Debugger;
				description: 'When true, always directly open the full Debugger view when debugging instead of showing only a small popup' translated.
				
			(aBuilder setting: #filterCommonMessageSends)
				label: 'Filter out common message sends' translated;
				target: Debugger;
				description: 'When true, filter out uninteresting message sends in the Debugger view while debugging' translated.
				
			(aBuilder setting: #ObjectExplorerShowIcons)
				label: 'Icons in explorer' translated;
				selector: #showIcons;
				target: ObjectExplorer;
				description: 'When possible, show icon in explorer.' translated.
				
			(aBuilder setting: #logFileName)
				label: 'Log file name' translated;
				target: Debugger;
				description: 'A name of the file, which will be used for logging all errors and notifications' 
		]