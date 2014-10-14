version107: spec
	<version: '1.0.7' imports: #('1.0-baseline' )>

	spec for: #'common' do: [
		spec blessing: #'stable'.
		spec description: 'version 1.0.7'.
		spec author: 'AndreiChis'.
		spec timestamp: '10/12/2014 19:56'.
		spec 
			project: 'GlamourCore' with: '2.76'.
		spec 
			package: #'GT-Inspector' with: 'GT-Inspector-TudorGirba.249';
			package: 'GT-InspectorExtensions-Core' with: 'GT-InspectorExtensions-Core-SvenVanCaekenberghe.65';
			package: 'GT-Tests-Inspector' with: 'GT-Tests-Inspector-TudorGirba.22'. ].
