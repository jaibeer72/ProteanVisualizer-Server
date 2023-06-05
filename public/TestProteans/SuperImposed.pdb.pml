#!/usr/bin/env pymol
cmd.load("./TestProteans/SuperImposed.pdb.pdb", "structure1")
cmd.load("./TestProteans/1cse.pdb", "structure2")
hide all
set all_states, off
remove not n. CA and not n. C3'
bond structure1 and i.    4, i.    5
bond structure1 and i.    5, i.    6
bond structure1 and i.    6, i.    7
bond structure1 and i.    7, i.    8
bond structure1 and i.    8, i.    9
bond structure1 and i.    9, i.   10
bond structure1 and i.   10, i.   11
bond structure1 and i.   11, i.   12
bond structure1 and i.   12, i.   13
bond structure1 and i.   13, i.   14
bond structure1 and i.   14, i.   15
bond structure1 and i.   15, i.   16
bond structure1 and i.   16, i.   17
bond structure1 and i.   17, i.   18
bond structure1 and i.   18, i.   19
bond structure1 and i.   19, i.   20
bond structure1 and i.   20, i.   21
bond structure1 and i.   21, i.   22
bond structure1 and i.   22, i.   23
bond structure1 and i.   23, i.   24
bond structure1 and i.   24, i.   27
bond structure1 and i.   27, i.   31
bond structure1 and i.   31, i.   32
bond structure1 and i.   32, i.   33
bond structure1 and i.   33, i.   34
bond structure1 and i.   34, i.   35
bond structure1 and i.   35, i.   36
bond structure1 and i.   36, i.   37
bond structure1 and i.   37, i.   38
bond structure1 and i.   38, i.   39
bond structure2 and i.  130, i.  131
bond structure2 and i.  131, i.  132
bond structure2 and i.  132, i.  133
bond structure2 and i.  133, i.  134
bond structure2 and i.  134, i.  135
bond structure2 and i.  135, i.  136
bond structure2 and i.  136, i.  137
bond structure2 and i.  137, i.  138
bond structure2 and i.  138, i.  139
bond structure2 and i.  139, i.  140
bond structure2 and i.  140, i.  141
bond structure2 and i.  141, i.  142
bond structure2 and i.  142, i.  143
bond structure2 and i.  143, i.  144
bond structure2 and i.  144, i.  145
bond structure2 and i.  145, i.  146
bond structure2 and i.  146, i.  147
bond structure2 and i.  147, i.  148
bond structure2 and i.  148, i.  149
bond structure2 and i.  149, i.  150
bond structure2 and i.  150, i.  151
bond structure2 and i.  151, i.  167
bond structure2 and i.  167, i.  168
bond structure2 and i.  168, i.  169
bond structure2 and i.  169, i.  176
bond structure2 and i.  176, i.  177
bond structure2 and i.  177, i.  178
bond structure2 and i.  178, i.  193
bond structure2 and i.  193, i.  194
bond structure2 and i.  194, i.  195
show stick, structure1 and ( i.    4 or i.    5 or i.    6 or i.    7 or i.    8 or i.    9 or i.   10 or i.   11 or i.   12 or i.   13 or i.   14 or i.   15 or i.   16 or i.   17 or i.   18 or i.   19 or i.   20 or i.   21 or i.   22 or i.   23 or i.   24 or i.   27 or i.   31 or i.   32 or i.   33 or i.   34 or i.   35 or i.   36 or i.   37 or i.   38 or i.   39)
show stick, structure2 and ( i.  130 or i.  131 or i.  132 or i.  133 or i.  134 or i.  135 or i.  136 or i.  137 or i.  138 or i.  139 or i.  140 or i.  141 or i.  142 or i.  143 or i.  144 or i.  145 or i.  146 or i.  147 or i.  148 or i.  149 or i.  150 or i.  151 or i.  167 or i.  168 or i.  169 or i.  176 or i.  177 or i.  178 or i.  193 or i.  194 or i.  195)
color blue, structure1
color red, structure2
set ribbon_width, 6
set stick_radius, 0.3
set sphere_scale, 0.25
set ray_shadow, 0
bg_color white
set transparency=0.2
zoom polymer and ((structure1) or (structure2))

