% diagramF.mp -- do not edit, generated automatically by thesis.tex
input feynmp
require_RCS_revision "1.30";
beginchar(1, 150*1.0pt#, 100*1.0pt#, 0);
"feynmf: 1";
LaTeX_unitlength:=1.0pt;
subgraph (0, 0, w, h);
vinit;
pickup pencircle scaled thin;
vleftn (__i, 2);
vrightn (__o, 2);
vconnect ("vanilla, tension=1", __i2, __z);
vconnect ("vanilla, tension=1.5", __y2, __o2);
vconnect ("vanilla, tension=1.5", __i1, __y1);
vconnect ("vanilla, tension=1", __z, __o1);
vconnect ("vanilla, tension=1.5", __y1, __z);
vconnect ("vanilla, tension=1.5", __z, __y2);
vvertex ("decoration.shape=square, decoration.size=6, label=z", __z);
vlabel ("$x_1$", __i2);
vlabel ("$x_3$", __i1);
vlabel ("$x_2$", __o2);
vlabel ("$x_4$", __o1);
vvertex ("label=$y_1$, label.dist=2mm, label.angle=120", __y1);
vvertex ("label=$y_2$, label.dist=2mm, label.angle=-120", __y2);
vdot (__y1, __y2);
vconnect ("gluon, tension=0, left", __y1, __y2);
vfreeze;
vdraw;
endsubgraph;
endchar;
% the end.
end.
endinput;
