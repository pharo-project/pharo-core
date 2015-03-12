skipShebang
	"Skip the shebang sequnce #! at the beginning of a bash file"
	readStream position = 0
		ifFalse: [  ^ self "#! can only be skipped at the beginning" ].
	self shebang.
	