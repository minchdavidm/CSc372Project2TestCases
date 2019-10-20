# CSc372Project2TestCases
This repository contains test cases for Project 2 in CSc372 Fall 2019 University of Arizona.

These test cases currently are for parts 1-6 only. If I have time to get to making test cases for 7 I will, or if someone wants to make a pull request with problem 7 test cases, feel free to.

Since this is a haskell program calling other haskell programs, it assumes that each of the other files are written as modules. This will require adding a "module NAME where" line to the start of each of your programs to test with. The module names are the same as the filenames with the first letter capitalized, as so:

`module Mean where`
`module Gcd where`
`module Hailstones where`
`module Lrtm where`
`module Vowels where`
`module Insertionsort where`

These test cases currently only display the received and expected output, so you have to check the differences yourself. Likewise, if someone wants to submit a pull request that makes it compare the strings instead of just showing them, feel free to.
