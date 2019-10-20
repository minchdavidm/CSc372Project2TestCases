-------------------------------------------------------------------
--   Assignment:  Program #2:  Haskell Exercise Tests
--       Author:  David Minch (minchdavidm@email.arizona.edu)
--
--       Course:  CSc 372
--   Instructor:  L. McCann
--           TA:  Tito Ferra
--     Due Date:  October 23rd, 2019
--
--  Description:  This program tests the other Haskell functions
--                for Program #2
--
--     Language:  Haskell (ghc)
-- Ex. Packages:  None.
--
-- Deficiencies:  None.
-------------------------------------------------------------------

import Control.Exception 

import Mean
import Gcd
import Hailstones
import Lrtm
import qualified Vowels as V
import Insertionsort

main = do
  putStrLn "Testing mean.hs"
  putStrLn ((show (meanIntList [1,2,3])) ++ " = 2.0")
  putStrLn ((show (meanIntList [0,0,0])) ++ " = 0.0")
  putStrLn ((show (meanIntList [-1])) ++ " = -1.0")
  putStrLn ((show (meanIntList [5,-2])) ++ " = 1.5")
  putStrLn ((show (meanIntList [-10, -9, -8, 7, 6, 5, -4, -3, -2, 1, 0, -1, 2, 3, 4, -5, -6, -7, 8, 9, 10])) ++ " = 0.0")
  putStrLn "Testing gcd.hs"
  putStrLn ((show (ourGCD 9 18)) ++ " = 9")
  putStrLn ((show (ourGCD 4 0)) ++ " = 4")
  putStrLn ((show (ourGCD 0 6)) ++ " = 6")
  putStrLn ((show (ourGCD 7 5)) ++ " = 1")
  putStrLn ((show (ourGCD 11 2)) ++ " = 1")
  putStrLn ((show (ourGCD 4037 183414)) ++ " = 11")
  putStrLn ((show (ourGCD 16 12)) ++ " = 4")
  putStrLn "Testing hailstones.hs"
  putStrLn ((show (hailstones 5)) ++ " = [5,16,8,2,1]")
  putStrLn ((show (hailstones 1)) ++ " = [1]")
  putStrLn ((show (hailstones 16)) ++ " = [16,8,4,2,1]")
  putStrLn ((show (hailstones 11)) ++ " = [11,34,17,52,26,13,40,20,10,5,16,8,4,2,1]")
  putStrLn "Testing lrtm.hs"
  putStrLn ((show (lrtm 1)) ++ " = [[1]]")
  putStrLn ((show (lrtm 2)) ++ " = [[0,2],[1,2]]")
  putStrLn ((show (lrtm 5)) ++ " = [[0,0,0,0,5],[0,0,0,4,5],[0,0,3,4,5],[0,2,3,4,5],[1,2,3,4,5]]")
  putStrLn "Testing vowels.hs"
  putStrLn ((show (V.vowelListList "The quick brown fox jumped \tover the \nlazy\rdog")) ++ " = [\"a\",\"eeee\",\"i\",\"oooo\",\"uu\"]") 
  putStrLn ((show (V.vowelListList "In a hole in the ground there lived a hobbit. Not a nasty, dirty, wet hole, filled with the ends of worms and an oozy smell, nor yet a dry, bare, sandy hole with nothing in it to sit down on or to eat: it was a hobbit-hole, and that means comfort.")) ++ " = [\"aaaaaaaaaaaaaaa\",\"eeeeeeeeeeeeeeeee\",\"iiiiiiiiiiiiii\",\"ooooooooooooooooooooo\",\"u\"]")
  putStrLn ((show (V.vowelListList "")) ++ " = [\"\",\"\",\"\",\"\",\"\"]")
  putStrLn ((show (V.vowelListList "I like to eet eet eet eeples end benenes")) ++ " [\"\",\"eeeeeeeeeeeeee\",\"ii\",\"o\",\"\"]")
  putStrLn ((V.vowelHistogram ["a","eeee","i","oooo","uu"]) ++ "\n||\na: *\ne: ****\ni: *\no: ****\nu: **\n")
  putStrLn ((V.vowelHistogram ["aaaaaaaaaaaaaaa","eeeeeeeeeeeeeeee","iiiiiiiiiiiii","ooooooooooooooooooooo","u"]) ++ "\n||\na: ***************\ne: ****************\ni: *************\no: *********************\nu: *\n")
  putStrLn ((V.vowelHistogram ["","","","",""]) ++ "\n||\na: \ne: \ni: \no: \nu: \n")
  putStrLn ((V.vowelHistogram ["","e","iiiiiiiiiiiiiii","o",""]) ++ "\n||\na: \ne: *\ni: ***************\no: *\nu: \n")
  putStrLn "Testing insertionsort.hs"
  putStrLn ((show (insertInOrder 1 [])) ++ " = [1]")
  putStrLn ((show (insertInOrder 8 [4])) ++ " = [4,8]")
  putStrLn ((show (insertInOrder 6 [6])) ++ " = [6,6]")
  putStrLn ((show (insertInOrder 7 [9])) ++ " = [7,9]")
  putStrLn ((show (insertInOrder 1 [5,9])) ++ " = [1,5,9]")
  putStrLn ((show (insertInOrder (-5) [-7,-2])) ++ " = [-7,-5,-2]")
  putStrLn ((show (insertInOrder 51 [4,12])) ++ " = [4,12,51]")
  putStrLn ((show (insertInOrder 14 [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16])) ++ " = [1,2,3,4,5,6,7,8,9,10,11,12,13,14,14,15,16]")
  putStrLn ((show (insertionSort [])) ++ " = []")
  putStrLn ((show (insertionSort [5])) ++ " = [5]")
  putStrLn ((show (insertionSort [4,4,5,4,4])) ++ " = [4,4,4,4,5]")
  putStrLn ((show (insertionSort [8,6,5,1])) ++ " = [1,5,6,8]")
  putStrLn ((show (insertionSort [12,0,-5,4,1,0])) ++ " = [-5,0,0,1,4,12]")
  putStrLn "Testing digitize.hs"

