version10: spec
	<version: '1.0' imports: #('1.0-baseline' )>

	spec for: #'common' do: [
		spec blessing: #'stable'.
		spec description: 'version 1.0'.
		spec author: 'AndreiChis'.
		spec timestamp: '9/22/2014 14:38'.
		spec 
			project: 'GlamourCore' with: '2.7'.
		spec 
			package: #'GT-Inspector' with: 'GT-Inspector-TudorGirba.239';
			package: 'GT-InspectorExtensions-Core' with: 'GT-InspectorExtensions-Core-TudorGirba.53';
			package: 'GT-Tests-Inspector' with: 'GT-Tests-Inspector-TudorGirba.22'. ].
