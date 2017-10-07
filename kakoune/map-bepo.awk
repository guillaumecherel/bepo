# Copyright (C) 2017 Guillaume Chérel
#
# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU Affero General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU Affero General Public License for more details.
#
# You should have received a copy of the GNU Affero General Public License
# along with this program.  If not, see <https://www.gnu.org/licenses/>.

BEGIN {
  remap["a"] = "a"
  remap["A"] = "A"
  remap["b"] = "k"
  remap["B"] = "K"
  remap["c"] = "x"
  remap["C"] = "X"
  remap["d"] = "i"
  remap["D"] = "I"
  remap["e"] = "p"
  remap["E"] = "P"
  remap["f"] = "e"
  remap["F"] = "E"
  remap["g"] = ","
  remap["G"] = ";"
  remap["h"] = "c"
  remap["H"] = "C"
  remap["i"] = "d"
  remap["I"] = "D"
  remap["j"] = "t"
  remap["J"] = "T"
  remap["k"] = "s"
  remap["K"] = "S"
  remap["l"] = "r"
  remap["L"] = "R"
  remap["m"] = "q"
  remap["M"] = "Q"
  remap["n"] = "'"
  remap["N"] = "?"
  remap["o"] = "l"
  remap["O"] = "L"
  remap["p"] = "j"
  remap["P"] = "J"
  remap["q"] = "b"
  remap["Q"] = "B"
  remap["r"] = "o"
  remap["R"] = "O"
  remap["s"] = "u"
  remap["S"] = "U"
  remap["t"] = "è"
  remap["T"] = "È"
  remap["u"] = "v"
  remap["U"] = "V"
  remap["v"] = "."
  remap["V"] = ":"
  remap["w"] = "é"
  remap["W"] = "É"
  remap["x"] = "y"
  remap["X"] = "Y"
  remap["y"] = "^"
  remap["z"] = "à"
  remap["Z"] = "À"
  remap["!"] = "1"
  remap["$"] = "4"
  remap["|"] = "Ç"
  remap["@"] = "2"
  remap["<"] = "G"
  remap[">"] = "H"
  remap["%"] = "5"
  remap["'"] = "m"
  remap["\""] = "M"
  remap[";"] = "n"
  remap["*"] = "8"
  remap["/"] = "f"
  remap["?"] = "F"
  remap["["] = "z"
  remap["]"] = "w"
  remap["{"] = "Z"
  remap["}"] = "W"
  remap["("] = "9"
  remap[")"] = "0"
  remap["`"] = "$"
  remap["~"] = "#"
  remap[","] = "g"
  remap["."] = "h"
  remap["\\"] = "ç" #this doesn't work even though running ":map global normal ç \" after starting kak works
  remap[":"] = "N"
}
