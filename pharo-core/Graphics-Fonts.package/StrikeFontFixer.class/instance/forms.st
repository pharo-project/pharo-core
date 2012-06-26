as yet unclassified
forms

	1 to: 256 do: [:i |
		charForms at: i put: (strikeFont characterFormAt: (Character value: (i - 1)))
	].
