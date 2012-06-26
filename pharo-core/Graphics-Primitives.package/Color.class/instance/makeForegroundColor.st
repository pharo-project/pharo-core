conversions
makeForegroundColor
        "Make a foreground color contrasting with me"
        ^self luminance >= 0.5
                ifTrue: [Color black]
                ifFalse: [Color white]