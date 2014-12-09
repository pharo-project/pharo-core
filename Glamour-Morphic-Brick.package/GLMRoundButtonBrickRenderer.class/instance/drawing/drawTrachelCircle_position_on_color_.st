drawTrachelCircle: radius position: aPoint on: aCanvas color: aColor
			
	self drawTrachelCanvas: (
		TRCanvas new addShape: (
			TRArcShape new
				color: aColor;
				alphaAngle: 0  betaAngle: 360  innerRadius: 0 externalRadius: radius;
				translateBy: radius @ radius
		)
	) at: aPoint on: aCanvas.