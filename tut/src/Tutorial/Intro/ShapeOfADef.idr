

module Tutorial.Intro.ShapeOfADef

{--

--}

maxBits8 : Bits8
maxBits8 = 255

distanceToMax : Bits8 -> Bits8
distanceToMax n = maxBits8 - n 

square : Integer -> Integer
square n = n * n 

{--
1/1: Building Tutorial.Intro.ShapeOfADef (src/Tutorial/Intro/ShapeOfADef.idr)
1/1: Building Tutorial.Intro.ShapeOfADef (src/Tutorial/Intro/ShapeOfADef.idr)
λΠ> maxBits8 - 100
155
1/1: Building Tutorial.Intro.ShapeOfADef (src/Tutorial/Intro/ShapeOfADef.idr)
λΠ> distanceToMax 12
243
λΠ> :t distanceToMax
Tutorial.Intro.ShapeOfADef.distanceToMax : Bits8 -> Bits8
1/1: Building Tutorial.Intro.ShapeOfADef (src/Tutorial/Intro/ShapeOfADef.idr)
λΠ> square 32
1024
λΠ> square (cast maxBits8)
65025
λΠ> maxBits8 * maxBits8
1
λΠ> 
--}

