fixing
fixFonts
	"self fixFonts"

	StrikeFont allInstances
		do: [:fnt | self fixFont: fnt]
		displayingProgress: 'Fixing Bitmap Fonts'.