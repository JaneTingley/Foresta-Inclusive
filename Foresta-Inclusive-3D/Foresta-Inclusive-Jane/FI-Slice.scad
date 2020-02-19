
module thing()
{
translate ([0,0,-1.7]) import("/Users/janetingley/Documents/GitHub/Foresta-Inclusive/Foresta-Inclusive-3D/Foresta-Inclusive-Jane/trichonymphaToSlice_reducedPolyCount.stl");


  }



module demo_proj()
{
  linear_extrude(center = true, height = 0.3) projection(cut = true) thing(); // .3 (3mm sice
  % thing();
}



echo(version=version());
translate([ +0, 0, 0 ]) demo_proj();


// Written by Clifford Wolf <clifford@clifford.at> and Marius
// Kintel <marius@kintel.net>
//
// To the extent possible under law, the author(s) have dedicated all
// copyright and related and neighboring rights to this software to the
// public domain worldwide. This software is distributed without any
// warranty.
//
// You should have received a copy of the CC0 Public Domain
// Dedication along with this software.
// If not, see <http://creativecommons.org/publicdomain/zero/1.0/>.
