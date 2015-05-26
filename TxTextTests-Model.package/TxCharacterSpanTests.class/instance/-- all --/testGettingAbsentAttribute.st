testGettingAbsentAttribute

	| actual |

	textModel := TxMockTextModel new.
	span text: textModel.
	
	actual := span getAttribute: TxFontAttribute.
	
	self assert: actual equals: #mockValue