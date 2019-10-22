all :
	echo "module Mean where" > Mean.hs
	cat mean.hs >> Mean.hs
	echo "module Gcd where" > Gcd.hs
	cat gcd.hs >> Gcd.hs
	echo "module Hailstones where" > Hailstones.hs
	cat hailstones.hs >> Hailstones.hs
	echo "module Lrtm where" > Lrtm.hs
	cat lrtm.hs >> Lrtm.hs
	echo "module Vowels where" > Vowels.hs
	cat vowels.hs >> Vowels.hs
	echo "module Insertionsort where" > Insertionsort.hs
	cat insertionsort.hs >> Insertionsort.hs
	echo "module Digitize where" > Digitize.hs
	cat digitize.hs >> Digitize.hs
	ghc test.hs
