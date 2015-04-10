gtExampleWithOneStepFrom: aSpotter
	<gtExample>
	<gtExampleFrom: #gtExampleBasic>
	| step |
	step := GTSpotterStep new spotter: aSpotter.
	aSpotter steps add: step.
	aSpotter currentStep: step.
	^ aSpotter