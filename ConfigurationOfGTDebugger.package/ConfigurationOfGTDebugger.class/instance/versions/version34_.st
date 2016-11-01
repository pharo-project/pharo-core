version34: spec
	<version: '3.4' imports: #('0.5-baseline' )>

	spec for: #'common' do: [
		spec blessing: #'stable'.
		spec description: 'GToolkit version 3.30'.
		spec author: 'AndreiChis'.
		spec timestamp: '11/1/2016 11:15'.
		spec project: 'GTInspectorCore' with: '3.22'.
		spec 
			package: 'GT-Debugger' with: 'GT-Debugger-TheIntegrator.356';
			package: 'GT-BytecodeDebugger' with: 'GT-BytecodeDebugger-AndreiChis.33';
			package: 'GT-SUnitDebugger' with: 'GT-SUnitDebugger-TudorGirba.39';
			package: 'GT-Tests-Debugger' with: 'GT-Tests-Debugger-AndreiChis.14'. ].
