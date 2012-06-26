as yet unclassified
decode: string
	"Xor with secret number -- just so file won't have raw password in it"
	| kk rand |
	rand := Random new seed: 234237.
	kk := (ByteArray new: string size) collect: [:bb | (rand next * 255) asInteger].
	1 to: kk size do: [:ii |
		kk at: ii put: ((kk at: ii) bitXor: (string at: ii) asciiValue)].
	^ kk asString