version35: spec
	<version: '3.5' imports: #('0.5-baseline' )>

	spec for: #'common' do: [
		spec blessing: #'stable'.
		spec description: 'Glamour version 4.28 includes Glamour <--> Spec integration'.
		spec author: 'JurajKubelka'.
		spec timestamp: '12/27/2016 13:18'.
		spec project: 'GTInspectorCore' with: '3.23'.
		spec 
			package: 'GT-Debugger' with: 'GT-Debugger-TheIntegrator.360';
			package: 'GT-BytecodeDebugger' with: 'GT-BytecodeDebugger-AndreiChis.33';
			package: 'GT-SUnitDebugger' with: 'GT-SUnitDebugger-TudorGirba.39';
			package: 'GT-Tests-Debugger' with: 'GT-Tests-Debugger-AndreiChis.14'. ].
