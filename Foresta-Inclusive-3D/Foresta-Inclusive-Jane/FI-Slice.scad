
module thing()
{
translate ([0,0,-0.2]) import("/Users/jtingley/Downloads/trichonymphaToSlice_rotated_fixed.stl");


  }



module demo_proj()
{
  linear_extrude(center = true, height = 0.3) projection(cut = true) thing(); // .3 (3mm sice
  # thing();
}

/*module demo_cut()
{
  for (i=[-20:5:+20]) {
     rotate(-30, [ 1, 1, 0 ]) translate([ 0, 0, -i ])
      linear_extrude(center = true, height = 0.5) projection(cut = true)
        translate([ 0, 0, i ]) rotate(+30, [ 1, 1, 0 ]) thing();
  }
  % thing();
}*/

echo(version=version());
translate([ +0, 0, 0 ]) demo_proj();
//translate([ +30, 0, 0 ]) demo_cut();


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
