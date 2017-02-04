version37: spec
	<version: '3.7' imports: #('0.5-baseline' )>

	spec for: #'common' do: [
		spec blessing: #'stable'.
		spec description: 'GToolkit version 3.33'.
		spec author: 'AndreiChis'.
		spec timestamp: '2/3/2017 18:29'.
		spec project: 'GTInspectorCore' with: '3.25'.
		spec 
			package: 'GT-Debugger' with: 'GT-Debugger-TheIntegrator.368';
			package: 'GT-BytecodeDebugger' with: 'GT-BytecodeDebugger-AndreiChis.33';
			package: 'GT-SUnitDebugger' with: 'GT-SUnitDebugger-TudorGirba.39';
			package: 'GT-Tests-Debugger' with: 'GT-Tests-Debugger-AndreiChis.14'. ].
