#!/usr/bin/env pymol
cmd.load("./TestProteans/SuperImposed.pdb.pdb", "structure1")
cmd.load("./TestProteans/1cse.pdb", "structure2")
hide all
set all_states, off
show cartoon, structure1 and ( i.    4 or i.    5 or i.    6 or i.    7 or i.    8 or i.    9 or i.   10 or i.   11 or i.   12 or i.   13 or i.   14 or i.   15 or i.   16 or i.   17 or i.   18 or i.   19 or i.   20 or i.   21 or i.   22 or i.   23 or i.   24 or i.   27 or i.   31 or i.   32 or i.   33 or i.   34 or i.   35 or i.   36 or i.   37 or i.   38 or i.   39)
show cartoon, structure2 and ( i.  130 or i.  131 or i.  132 or i.  133 or i.  134 or i.  135 or i.  136 or i.  137 or i.  138 or i.  139 or i.  140 or i.  141 or i.  142 or i.  143 or i.  144 or i.  145 or i.  146 or i.  147 or i.  148 or i.  149 or i.  150 or i.  151 or i.  167 or i.  168 or i.  169 or i.  176 or i.  177 or i.  178 or i.  193 or i.  194 or i.  195)
color blue, structure1
color red, structure2
set ribbon_width, 6
set stick_radius, 0.3
set sphere_scale, 0.25
set ray_shadow, 0
bg_color white
set transparency=0.2
zoom polymer and ((structure1) or (structure2))

