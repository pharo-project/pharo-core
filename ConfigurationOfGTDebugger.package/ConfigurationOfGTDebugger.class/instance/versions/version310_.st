version310: spec
	<version: '3.10' imports: #('0.5-baseline' )>

	spec for: #'common' do: [
		spec blessing: #'stable'.
		spec description: 'GToolkit version 3.36'.
		spec author: 'AndreiChis'.
		spec timestamp: '3/6/2017 14:09'.
		spec project: 'GTInspectorCore' with: '3.28'.
		spec 
			package: 'GT-Debugger' with: 'GT-Debugger-AndreiChis.379';
			package: 'GT-BytecodeDebugger' with: 'GT-BytecodeDebugger-AndreiChis.36';
			package: 'GT-SUnitDebugger' with: 'GT-SUnitDebugger-TudorGirba.39';
			package: 'GT-Tests-Debugger' with: 'GT-Tests-Debugger-AndreiChis.14'. ].
