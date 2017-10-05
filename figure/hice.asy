settings.outformat="pdf";
unitsize(3cm);
Label Lz = Label("$h_i$", position=MidPoint, align=W);
draw((-.1,0) -- (4,0), arrow=Arrow);
draw((0,-.1) -- (0,2), arrow = Arrow,L=Lz);
draw((0,0.1) -- (1.2,1.7)--(1.7,1.7)--(2.2,0)--(3.2,0),black + linewidth(2.0pt));