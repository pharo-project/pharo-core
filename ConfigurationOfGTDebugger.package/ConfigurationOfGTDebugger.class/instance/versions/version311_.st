version311: spec
	<version: '3.11' imports: #('0.5-baseline' )>

	spec for: #'common' do: [
		spec blessing: #'stable'.
		spec description: 'GToolkit Version 3.37'.
		spec author: 'AndreiChis'.
		spec timestamp: '3/28/2017 16:27'.
		spec project: 'GTInspectorCore' with: '3.29'.
		spec 
			package: 'GT-Debugger' with: 'GT-Debugger-AndreiChis.380';
			package: 'GT-BytecodeDebugger' with: 'GT-BytecodeDebugger-AndreiChis.36';
			package: 'GT-SUnitDebugger' with: 'GT-SUnitDebugger-TudorGirba.39';
			package: 'GT-Tests-Debugger' with: 'GT-Tests-Debugger-AndreiChis.14'. ].
