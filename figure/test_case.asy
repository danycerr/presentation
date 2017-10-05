settings.outformat="pdf";
unitsize(1cm);
//draw((-.1,0) -- (2,0), arrow=Arrow);
//draw((0,-.1) -- (0,2), arrow = Arrow);
real a=3;
path solid = box((0,0), (1,a));
path liquid = box((0,a), (1,5));
path sed   = box ((0,a), (1,3.4));
fill(solid, mediumgray);
fill(liquid, mediumblue);
draw(solid, black + linewidth(1.0pt));
draw(liquid, black + linewidth(1.0pt));

draw ( (1.1, 0)--(1.1,a),arrow=Arrows(),
bar=Bars);
label("$h_b$", (1.2,0.5*a), align=E);
draw ( (1.1, a)--(1.1,5),arrow=Arrows(),
bar=Bars);
label("$h_i(t)$", (1.2,4), align=E);
draw((2.1, 0) -- (2.1,1) , black + linewidth(1.0pt), arrow = Arrow(TeXHead));
label("$z$", (2.1,1), align=N);
dot((2.1, 0) );
label("$z_a$", (1.05,0), align=E);
label("$z_b$", (1.05,a), align=E);