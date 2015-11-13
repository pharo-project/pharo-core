version23: spec
	<version: '2.3' imports: #('2.1-baseline' )>

	spec for: #'common' do: [
		spec blessing: #'stable'.
		spec description: 'version 2.3: cleaned up the class side of RubWorkspaceExample class:
Recategorization
  - #open in category "instance creation"
  - #title and spyAnnouncer in "private - accessing"
 - #windowWithScrolledText: in "private - utilities"

2 Example methods in "examples" category:
 - provide #exampleWindowWithScrolledText
 - provide #exampleWithCustomShortcut as discussed in 
  http://lists.pharo.org/pipermail/pharo-users_lists.pharo.org/2015-October/022528.html

Additionally added the <script> pragma to #open so one
can just click in Nautilus'.
		spec author: 'StephaneDucasse'.
		spec timestamp: '2015-11-13'.
		spec package: 'Rubric' with: 'Rubric-TorstenBergmann.298'. ].
