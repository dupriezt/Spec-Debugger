example - sumXPoint
sumXPoint_withArg: aPoint
	|p xSum|
	p := Point x: 1 y: 1.
	xSum := { p. Point x: 2 y: 2. aPoint} inject: 0 into: [ :sum :point | sum + point x ].
	^ xSum.