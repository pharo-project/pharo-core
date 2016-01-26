version26: spec
	<version: '2.6' imports: #('2.1-baseline' )>

	spec for: #'common' do: [
		spec blessing: #'stable'.
		spec description: 'case 17438  some fixes for:
case 17430 command-click should work also on method signature and not just body of method
case 17420 Read only Textarea MNU on command + l
case 15345 GT workspace/inspector evaluates source wrong when it ends with $", treating it as nil instead
case 17420 RubParagraph>>#disableDrawingWhile: should not enable drawing for recursive calls while disabled'.
		spec author: 'NicolaiHess'.
		spec timestamp: '1/23/2016 11:31'.
		spec package: 'Rubric' with: 'Rubric-NicolaiHess.327'. ].
