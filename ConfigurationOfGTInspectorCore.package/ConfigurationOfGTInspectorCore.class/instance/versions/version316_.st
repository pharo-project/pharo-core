version316: spec
	<version: '3.16' imports: #('2.0-baseline' )>

	spec for: #'common' do: [
		spec blessing: #'stable'.
		spec description: 'Integration for case 18773.

Fixes these issues:
- case 18691
- case 18471
- case 18244
- case 18708

Apart from the issues:
- GT-InspectorExtensions: only show methods for the current class, added basic example for RBCondition
- Uses Pragma>>#methodSelector instead of Pragma>>#selector (case 18665).
- Uses Behavior>>#classLayout instead of Behavior>>#layout (case 16636).
- Uses CompiledMethod>>#sourceCode instead of CompiledMethod>>#getSource (case 18694).
- GT-EventRecorder: Add a basic recorder event'.
		spec author: 'JurajKubelka'.
		spec timestamp: '7/13/2016 10:05'.
		spec project: 'GlamourCore' with: '4.18'.
		spec 
			package: 'GT-Inspector' with: 'GT-Inspector-JurajKubelka.434';
			package: 'GT-InspectorExtensions-Core' with: 'GT-InspectorExtensions-Core-JurajKubelka.225';
			package: 'GT-Tests-Inspector' with: 'GT-Tests-Inspector-JurajKubelka.57'. ].
