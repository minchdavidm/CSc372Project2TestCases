-------------------------------------------------------------------
--   Assignment:  Program #2:  Haskell Exercise Tests
--       Author:  David Minch (minchdavidm@email.arizona.edu)
--
--       Course:  CSc 372
--   Instructor:  L. McCann
--           TA:  Tito Ferra
--     Due Date:  October 23rd, 2019
--
--  Description:  This function tests the other files
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
import Digitize

main = do
  ------------------------------------------
  putStrLn "Testing mean.hs"
  putStrLn (if ((show (meanIntList [1,2,3])) == "2.0") then "mean test 1 passed" else "mean test 1 failed. Expected 2.0, Received " ++ (show (meanIntList [1,2,3])))
  putStrLn (if ((show (meanIntList [0,0,0])) == "0.0") then "mean test 2 passed" else "mean test 2 failed. Expected 0.0, Received " ++ (show (meanIntList [0,0,0])))
  putStrLn (if ((show (meanIntList [-1])) == "-1.0") then "mean test 3 passed" else "mean test 3 failed. Expected -1.0, Received " ++ (show (meanIntList [-1])))
  putStrLn (if ((show (meanIntList [5,-2])) == "1.5") then "mean test 4 passed" else "mean test 4 failed. Expected 1.5, Received " ++ (show (meanIntList [5,-2])))
  putStrLn (if ((show (meanIntList [-10, -9, -8, 7, 6, 5, -4, -3, -2, 1, 0, -1, 2, 3, 4, -5, -6, -7, 8, 9, 10])) == "0.0") then "mean test 5 passed" else "mean test 5 failed. Expected 0.0, Received " ++ (show (meanIntList [-10, -9, -8, 7, 6, 5, -4, -3, -2, 1, 0, -1, 2, 3, 4, -5, -6, -7, 8, 9, 10])))
  ------------------------------------------
  putStrLn "Testing gcd.hs"
  putStrLn (if ((show (ourGCD 9 18)) == "9") then "gcd test 1 passed" else "gcd test 1 failed. Expected 9, Received " ++ (show (ourGCD 9 18)))
  putStrLn (if ((show (ourGCD 4 0)) == "4") then "gcd test 2 passed" else "gcd test 2 failed. Expected 4, Received " ++ (show (ourGCD 4 0)))
  putStrLn (if ((show (ourGCD 0 6)) == "6") then "gcd test 3 passed" else "gcd test 3 failed. Expected 6, Received " ++ (show (ourGCD 0 6)))
  putStrLn (if ((show (ourGCD 7 5)) == "1") then "gcd test 4 passed" else "gcd test 4 failed. Expected 1, Received " ++ (show (ourGCD 7 5)))
  putStrLn (if ((show (ourGCD 11 2)) == "1") then "gcd test 5 passed" else "gcd test 5 failed. Expected 1, Received " ++ (show (ourGCD 11 2)))
  putStrLn (if ((show (ourGCD 4037 183414)) == "11") then "gcd test 6 passed" else "gcd test 6 failed. Expected 11, Received " ++ (show (ourGCD 4037 183414)))
  putStrLn (if ((show (ourGCD 16 12)) == "4") then "gcd test 7 passed" else "gcd test 7 failed. Expected 4, Received " ++ (show (ourGCD 16 12)))
  ------------------------------------------
  putStrLn "Testing hailstones.hs"
  putStrLn (if ((show (hailstones 5)) == "[5,16,8,4,2,1]") then "hailstones test 1 passed" else "hailstones test 1 failed. Expected [5,16,8,4,2,1], Received " ++ (show (hailstones 5)))
  putStrLn (if ((show (hailstones 1)) == "[1]") then "hailstones test 2 passed" else "hailstones test 2 failed. Expected [1], Received " ++ (show (hailstones 1)))
  putStrLn (if ((show (hailstones 16)) == "[16,8,4,2,1]") then "hailstones test 3 passed" else "hailstones test 3 failed. Expected [16,8,2,1], Received " ++ (show (hailstones 16)))
  putStrLn (if ((show (hailstones 11)) == "[11,34,17,52,26,13,40,20,10,5,16,8,4,2,1]") then "hailstones test 4 passed" else "hailstones test 4 failed. Expected [11,34,17,52,26,13,40,20,10,5,16,8,2,1], Received " ++ (show (hailstones 11)))
  ------------------------------------------
  putStrLn "Testing lrtm.hs"
  putStrLn (if ((show (lrtm 1)) == "[[1]]") then "lrtm test 1 passed" else "lrtm test 1 failed. Expected [[1]], Received " ++ (show (lrtm 1)))
  putStrLn (if ((show (lrtm 2)) == "[[0,2],[1,2]]") then "lrtm test 2 passed" else "lrtm test 2 failed. Expected [[0,2],[1,2]], Received " ++ (show (lrtm 2)))
  putStrLn (if ((show (lrtm 5)) == "[[0,0,0,0,5],[0,0,0,4,5],[0,0,3,4,5],[0,2,3,4,5],[1,2,3,4,5]]") then "lrtm test 3 passed" else "lrtm test 3 failed. Expected [[0,0,0,0,5],[0,0,0,4,5],[0,0,3,4,5],[0,2,3,4,5],[1,2,3,4,5]], Received " ++ (show (lrtm 5)))
  ------------------------------------------
  putStrLn "Testing vowels.hs: vowelListList"
  putStrLn (if ((show (V.vowelListList "The quick brown fox jumped \tover the \nlazy\rdog")) == "[\"a\",\"eeee\",\"i\",\"oooo\",\"uu\"]") then "vowelListList test 1 passed" else "vowelListList test 1 failed. Expected [\"a\",\"eeee\",\"i\",\"oooo\",\"uu\"], Received " ++ (show (V.vowelListList "The quick brown fox jumped \tover the \nlazy\rdog")))
  putStrLn (if ((show (V.vowelListList "In a hole in the ground there lived a hobbit. Not a nasty, dirty, wet hole, filled with the ends of worms and an oozy smell, nor yet a dry, bare, sandy hole with nothing in it to sit down on or to eat: it was a hobbit-hole, and that means comfort.")) == "[\"aaaaaaaaaaaaaaa\",\"eeeeeeeeeeeeeeeee\",\"iiiiiiiiiiiiii\",\"ooooooooooooooooooooo\",\"u\"]") then "vowelListList test 2 passed" else "vowelListList test 2 failed. Expected [\"aaaaaaaaaaaaaaa\",\"eeeeeeeeeeeeeeeee\",\"iiiiiiiiiiiiii\",\"ooooooooooooooooooooo\",\"u\"], Received " ++ (show (V.vowelListList "In a hole in the ground there lived a hobbit. Not a nasty, dirty, wet hole, filled with the ends of worms and an oozy smell, nor yet a dry, bare, sandy hole with nothing in it to sit down on or to eat: it was a hobbit-hole, and that means comfort.")))
  putStrLn (if ((show (V.vowelListList "")) == "[\"\",\"\",\"\",\"\",\"\"]") then "vowelListList test 3 passed" else "vowelListList test 3 failed. Expected [\"\",\"\",\"\",\"\",\"\"], Received " ++ (show (V.vowelListList "")))
  putStrLn (if ((show (V.vowelListList "I like to eet eet eet eeples end benenes")) == "[\"\",\"eeeeeeeeeeeeee\",\"ii\",\"o\",\"\"]") then "vowelListList test 4 passed" else "vowelListList test 4 failed. Expected [\"\",\"eeeeeeeeeeeeee\",\"ii\",\"o\",\"\"], Received " ++ (show (V.vowelListList "I like to eet eet eet eeples end benenes")))
  ------------------------------------------
  putStrLn "Testing vowels.hs: vowelHistogram"
  putStrLn (if ((V.vowelHistogram ["a","eeee","i","oooo","uu"]) == "a: *\ne: ****\ni: *\no: ****\nu: **") then "vowelHistogram test 1 passed" else "vowelHistogram test 1 failed. Expected \na: *\ne: ****\ni: *\no: ****\nu: **, Received " ++ (V.vowelHistogram ["a","eeee","i","oooo","uu"]) ++ ". Look the same? Check the whitespace. Each row should be followed by a new line except for u according to the spec.")
  putStrLn ( if ((V.vowelHistogram ["aaaaaaaaaaaaaaa","eeeeeeeeeeeeeeee","iiiiiiiiiiiii","ooooooooooooooooooooo","u"]) == "a: ***************\ne: ****************\ni: *************\no: *********************\nu: *") then "vowelHistogram test 2 passed" else "vowelHistogram test 2 failed. Expected \na: ***************\ne: ****************\ni: *************\no: *********************\nu: *, Received " ++ (V.vowelHistogram ["aaaaaaaaaaaaaaa","eeeeeeeeeeeeeeee","iiiiiiiiiiiii","ooooooooooooooooooooo","u"]) ++ ". Look the same? Check the whitespace. Each row should be followed by a new line except for u according to the spec.")
  putStrLn ( if ((V.vowelHistogram ["","","","",""]) == "a: \ne: \ni: \no: \nu: ") then "vowelHistogram test 3 passed" else "vowelHistogram test 3 failed. Expected \na: \ne: \ni: \no: \nu:, Received " ++ (V.vowelHistogram ["","","","",""]) ++ ". Look the same? Check the whitespace. Each row should be followed by a new line except for u, and if there aren't any * characters on the line, there should still be a space between the colon and the newline according to the spec.")
  putStrLn ( if ((V.vowelHistogram ["","e","iiiiiiiiiiiiiii","o",""]) == "a: \ne: *\ni: ***************\no: *\nu: ") then "vowelHistogram test 4 passed" else "vowelHistogram test 4 failed. Expected \na: \ne: *\ni: ***************\no: *\nu: , Received " ++ (V.vowelHistogram ["","e","iiiiiiiiiiiiiii","o",""]) ++ ". Look the same? Check the whitespace. Each row should be followed by a new line except for u, and if there aren't any * characters on the line, there should still be a space between the colon and the newline according to the spec.")
  ------------------------------------------
  putStrLn "Testing insertionsort.hs insertInOrder"
  putStrLn ( if ((show (insertInOrder 1 [])) == "[1]") then "insertInOrder test 1 passed" else "insertInOrder test 1 failed. Expected [1], Received " ++ (show (insertInOrder 1 [])))
  putStrLn ( if ((show (insertInOrder 8 [4])) == "[4,8]") then "insertInOrder test 2 passed" else "insertInOrder test 2 failed. Expected [4,8], Received " ++ (show (insertInOrder 8 [4])))
  putStrLn ( if ((show (insertInOrder 6 [6])) == "[6,6]") then "insertInOrder test 3 passed" else "insertInOrder test 3 failed. Expected [6,6], Received " ++ (show (insertInOrder 6 [6])))
  putStrLn ( if ((show (insertInOrder 7 [9])) == "[7,9]") then "insertInOrder test 4 passed" else "insertInOrder test 4 failed. Expected [7,9], Received " ++ (show (insertInOrder 7 [9])))
  putStrLn ( if ((show (insertInOrder 1 [5,9])) == "[1,5,9]") then "insertInOrder test 5 passed" else "insertInOrder test 5 failed. Expected [1,5,9], Received " ++ (show (insertInOrder 1 [5,9])))
  putStrLn ( if ((show (insertInOrder (-5) [-7,-2])) == "[-7,-5,-2]") then "insertInOrder test 6 passed" else "insertInOrder test 6 failed. Expected [-7,-5,-2], Received " ++ (show (insertInOrder (-5) [-7,-2])))
  putStrLn ( if ((show (insertInOrder 51 [4,12])) == "[4,12,51]") then "insertInOrder test 7 passed" else "insertInOrder test 7 failed. Expected [4,12,51], Received " ++ (show (insertInOrder 51 [4,12])))
  putStrLn ( if ((show (insertInOrder 14 [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16])) == "[1,2,3,4,5,6,7,8,9,10,11,12,13,14,14,15,16]") then "insertInOrder test 8 passed" else "insertInOrder test 8 failed. Expected [1,2,3,4,5,6,7,8,9,10,11,12,13,14,14,15,16], Received " ++ (show (insertInOrder 14 [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16])))
  ------------------------------------------
  putStrLn "Testing insertionsort.hs insertionSort"
  putStrLn ( if ((show (insertionSort [])) == "[]") then "insertionSort test 1 passed" else "insertionSort test 1 failed. Expected [], Received" ++ (show (insertionSort [])))
  putStrLn ( if ((show (insertionSort [5])) == "[5]") then "insertionSort test 2 passed" else "insertionSort test 2 failed. Expected [], Received" ++ (show (insertionSort [5])))
  putStrLn ( if ((show (insertionSort [4,4,5,4,4])) == "[4,4,4,4,5]") then "insertionSort test 3 passed" else "insertionSort test 3 failed. Expected [4,4,4,4,5], Received" ++ (show (insertionSort [4,4,5,4,4])))
  putStrLn ( if ((show (insertionSort [8,6,5,1])) == "[1,5,6,8]") then "insertionSort test 4 passed" else "insertionSort test 4 failed. Expected [1,5,6,8], Received" ++ (show (insertionSort [8,6,5,1])))
  putStrLn ( if ((show (insertionSort [12,0,-5,4,1,0])) == "[-5,0,0,1,4,12]") then "insertionSort test 5 passed" else "insertionSort test 5 failed. Expected [-5,0,0,1,4,12], Received" ++ (show (insertionSort [12,0,-5,4,1,0])))
  ------------------------------------------
  putStrLn "Testing digitize.hs"
  putStrLn ( if ((digitize "1234567890:1234567890") == "    _  _     _  _  _  _  _  _      _  _     _  _  _  _  _  _ \n  | _| _||_||_ |_   ||_||_|| |.  | _| _||_||_ |_   ||_||_|| |\n  ||_  _|  | _||_|  ||_| _||_|.  ||_  _|  | _||_|  ||_| _||_|") then "digitize test 1 passed" else "digitize test 1 failed. Expected \n    _  _     _  _  _  _  _  _      _  _     _  _  _  _  _  _\n  | _| _||_||_ |_   ||_||_|| |.  | _| _||_||_ |_   ||_||_|| |\n  ||_  _|  | _||_|  ||_| _||_|.  ||_  _|  | _||_|  ||_| _||_|, Received\n" ++ (digitize "1234567890:1234567890") ++ ". Look the same? Check the whitespace. Each digit must use exactly 3 characters on each line, colons must use exactly 1, and only the first two lines are followed by a newline.")
  putStrLn ( if ((digitize ":::::") == "     \n.....\n.....") then "digitize test 2 passed" else "digitize test 2 failed. Expected \n     \n.....\n....., Received\n" ++ (digitize ":::::") ++ ". Look the same? Check the whitespace. Each digit must use exactly 3 characters on each line, colons must use exactly 1, and only the first two lines are followed by a newline.")
  putStrLn ( if ((digitize "") == "\n\n") then "digitize test 3 passed" else "digitize test 3 failed. Expected \n\n\n, Received\n" ++ (digitize "") ++ ". Look the same? Check the whitespace. Each digit must use exactly 3 characters on each line, colons must use exactly 1, and only the first two lines are followed by a newline.")
  putStrLn ( if ((digitize ":") == " \n.\n.") then "digitize test 4 passed" else "digitize test 4 failed. Expected \n \n.\n., Received\n" ++ (digitize ":") ++ ". Look the same? Check the whitespace. Each digit must use exactly 3 characters on each line, colons must use exactly 1, and only the first two lines are followed by a newline.")
  putStrLn ( if ((digitize "1") == "   \n  |\n  |") then "digitize test 5 passed" else "digitize test 5 failed. Expected \n   \n  |\n  |, Received\n" ++ (digitize "1") ++ ". Look the same? Check the whitespace. Each digit must use exactly 3 characters on each line, colons must use exactly 1, and only the first two lines are followed by a newline.")
  putStrLn ( if ((digitize "2") == " _ \n _|\n|_ ") then "digitize test 6 passed" else "digitize test 6 failed. Expected \n _ \n _|\n|_ , Received\n" ++ (digitize "2") ++ ". Look the same? Check the whitespace. Each digit must use exactly 3 characters on each line, colons must use exactly 1, and only the first two lines are followed by a newline.")
  putStrLn ( if ((digitize "3") == " _ \n _|\n _|") then "digitize test 7 passed" else "digitize test 7 failed. Expected \n _ \n _|\n _|, Received\n" ++ (digitize "3") ++ ". Look the same? Check the whitespace. Each digit must use exactly 3 characters on each line, colons must use exactly 1, and only the first two lines are followed by a newline.")
  putStrLn ( if ((digitize "4") == "   \n|_|\n  |") then "digitize test 8 passed" else "digitize test 8 failed. Expected \n   \n|_|\n  |, Received\n" ++ (digitize "4") ++ ". Look the same? Check the whitespace. Each digit must use exactly 3 characters on each line, colons must use exactly 1, and only the first two lines are followed by a newline.")
  putStrLn ( if ((digitize "5:6") == " _   _ \n|_ .|_ \n _|.|_|") then "digitize test 9 passed" else "digitize test 9 failed. Expected \n _   _ \n|_ .|_ \n _|.|_|, Received\n" ++ (digitize "5:6") ++ ". Look the same? Check the whitespace. Each digit must use exactly 3 characters on each line, colons must use exactly 1, and only the first two lines are followed by a newline.")
  putStrLn ( if ((digitize "7:8:9") == " _   _   _ \n  |.|_|.|_|\n  |.|_|. _|") then "digitize test 10 passed" else "digitize test 10 failed. Expected \n _   _   _ \n  |.|_|.|_|\n  |.|_|. _|, Received\n" ++ (digitize "7:8:9") ++ ". Look the same? Check the whitespace. Each digit must use exactly 3 characters on each line, colons must use exactly 1, and only the first two lines are followed by a newline.")
  putStrLn ( if ((digitize ":0:") == "  _  \n.| |.\n.|_|.") then "digitize test 11 passed" else "digitize test 11 failed. Expected \n  _  \n.| |.\n.|_|., Received\n" ++ (digitize ":0:") ++ ". Look the same? Check the whitespace. Each digit must use exactly 3 characters on each line, colons must use exactly 1, and only the first two lines are followed by a newline.")

