convenience
movzx: src to: dest
	"Ensure right src/dest order"
	^ self movzx: dest with: src