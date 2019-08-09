% samplepics.mp -- do not edit, generated automatically by presentation.tex
input feynmp
require_RCS_revision "1.30";
beginchar(1, 75*1.0pt#, 60*1.0pt#, 0);
"feynmf: 1";
LaTeX_unitlength:=1.0pt;
subgraph (0, 0, w, h);
vinit;
pickup pencircle scaled thin;
vleftn (__i, 2);
vrightn (__o, 2);
vconnect ("fermion, label=$p_3$", __i1, __v1);
vconnect ("fermion, label=$p_4$, label.side=right", __v1, __o1);
vconnect ("fermion, label=$p_1$, label.side=left", __i2, __v1);
vconnect ("fermion, label=$p_2$", __v1, __o2);
vvertex ("decoration.shape=square, decoration.size=6, label=z", __v1);
vlabel ("$x_1$", __i2);
vlabel ("$x_3$", __i1);
vlabel ("$x_2$", __o2);
vlabel ("$x_4$", __o1);
vfreeze;
vdraw;
endsubgraph;
endchar;
% the end.
end.
endinput;
