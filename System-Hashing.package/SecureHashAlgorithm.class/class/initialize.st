initialization
initialize
	"SecureHashAlgorithm initialize"
	"For the curious, here's where these constants come from:
	  #(2 3 5 10) collect: [:x | ((x sqrt / 4.0) * (2.0 raisedTo: 32)) truncated hex]"

	K1 := ThirtyTwoBitRegister new load: 16r5A827999.
	K2 := ThirtyTwoBitRegister new load: 16r6ED9EBA1.
	K3 := ThirtyTwoBitRegister new load: 16r8F1BBCDC.
	K4 := ThirtyTwoBitRegister new load: 16rCA62C1D6.
