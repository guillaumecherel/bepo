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
  FS="\t"
  OFS=""
}

function escape(s) {
  gsub("'", "\\'",s)
  gsub(">>", "\\>>",s) #escape '>' in alt or ctrl commands '<a-\>>'
  gsub(/^|$/, "'", s) #surround string with single quote
  gsub(/^'\\'$/, "%{\\}", s) #hack https://github.com/mawww/kakoune/issues/1612
  return s
}

$1 in remap && length($2) > 0 {print "map -docstring \""$2"\" global normal "escape(remap[$1])" "escape($1)}
$1 in remap && length($3) > 0 {print "map -docstring \""$3"\" global normal "escape("<a-"remap[$1]">")" "escape("<a-"$1">")}
$1 in remap && length($4) > 0 {print "map -docstring \""$4"\" global normal "escape("<c-"remap[$1]">")" "escape("<c-"$1">")}
$1 in remap && length($5) > 0 {print "map -docstring \""$5"\" global goto "escape(remap[$1])" "escape($1)""}
$1 in remap && length($6) > 0 {print "map -docstring \""$6"\" global view "escape(remap[$1])" "escape($1)""}
