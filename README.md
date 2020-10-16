The dice programming language
==========================

_Timo Sarkar <sartimo10@gmail.com>_

Dice is a domain-specific language ebedded in Julia v1.5.1. Dice is used for describing chess algorithms in seperate .dice files. The dice programming language is implemented by using stable Julia code as back-end and FORTRAN99 for compilation performance. 


Motivation
------------

Dice born on Oktober 2020. The main problem was to extend the julia language for numerical chess programming by using hygienic-macros that could to be modified by simple fortran99 interopabillity. Since this moment, I had the idea to enhance the Julia language by using an internal domain-specific language. I've sketched some prototyped and got finally satisfyied. I finally came up with a nice little language that I call "Dice". So Dice is a domain-specific language embedded directly in Julia. Some of the main design concepts of Dice is: simplicity and familliarism to the julia language so developers could easily adapt their knowledge to Dice.

<!--[See my SIGGRAPH 2016 Paper on the design of Dice](http://graphics.stanford.edu/papers/Dice/)-->

Install & Run
-------------

Installing Dice is not required. Dice requires Julia version 1.5.1, which can be easily installed with either <a href="">the official installer</a> or homebrew on macOS. 

    brew cask install julia

After installation of Julia, the dice module assumes, that you have setted the correct environment variables on the PATH. Dice provides a small script (DicePATH) that automatically sets up the correct paths for Dice:

    cd [Dice root]
    ./DicePATH.sh

Which will then generate the .log file with all events during the execution. In order to make Dice globally on your system available and callable you must set the following variable in a new shell, terminal or cmd.:

    set PATH "[PathToDiceBinaryRoot]"

You must replace the "PathToDiceBinaryRoot" with the .bin/dice file in your dice-project root.

Fortran Setup
----------

`make fortran` will write out fortran files for each test (located at `examples/out/[testname].f90`). You can compile and run these fortran files on your machine using your own flow. However, we also provide a simplified Fortran flow that we recommend (implemented in `examples/makefile`). 

Dice's Fortran flow was tested with a [Lenovo L13 Yoga]() at Intel Core i7-10th gen, Windows 10 Pro and 16gb RAM. Tests on Unix systems are still in process. You can find some benchmarks at `benchmarks\fortran`. Dice's Fortran code is compiled by using a multi-threaded julia-to-f90 bridge.  

Dice Overview
========

Users can simply create a new .dice file, type in their code and evalueate the results by using this julia command, where file.dice is the target file.

    dice run [file.dice]

You can find a full list of command-line options here (soon still uinder development)

This readme documents the setup and the functionallity of the Dice programming language. For Syntax reference you should refer to the homepage of Dice. (still under development). See a small sample of using the dice programming language.:

```lua
module turn.dice
@importfen
@newgame :name = sample (
    @move( :e2 :e4 )
)
-- simple lua comments
-- first turn protocoll
```
<!--
```julia

using dice.jl
module ab.local
function alpha-beta ( turn )
   @turn  = nothing
   @deep  = 4
   @reply = max(deep, -∞, +∞)
   if ( turn == nothing )
        print("matt")
   else 
        do turn
   end
   -- simple Lua-like comments
   -- simple alpha-beta search 
end
```-->

Licensing
----------

The dice programming language is licenced under public terms of the GNU Apache 2.0 Licence. 

Copyright 2020 Timo Sarkar 

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.

