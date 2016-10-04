version33: spec
	<version: '3.3' imports: #('0.5-baseline' )>

	spec for: #'common' do: [
		spec blessing: #'stable'.
		spec description: 'GToolkit Version 3.29'.
		spec author: 'AndreiChis'.
		spec timestamp: '10/4/2016 12:00'.
		spec project: 'GTInspectorCore' with: '3.21'.
		spec 
			package: 'GT-Debugger' with: 'GT-Debugger-AndreiChis.354';
			package: 'GT-BytecodeDebugger' with: 'GT-BytecodeDebugger-AndreiChis.33';
			package: 'GT-SUnitDebugger' with: 'GT-SUnitDebugger-TudorGirba.39';
			package: 'GT-Tests-Debugger' with: 'GT-Tests-Debugger-AndreiChis.14'. ].
