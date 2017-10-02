settings.outformat="pdf";
unitsize(1cm);
//draw((-.1,0) -- (2,0), arrow=Arrow);
//draw((0,-.1) -- (0,2), arrow = Arrow);
real a=3;
//path solid = box((0,0), (2,0.3));
//path liquid = box((0,0.3), (2,1));

path hill = (0,0.1) ..  (0.25 , 0.15 ) .. (0.4,0.1).. (1.2,0.2) ..(1.3, 0.15) .. (2,0.12);
path bot = (0,0) -- hill -- (2,0) -- cycle;
path top = (0,1) -- hill -- (2,1) -- cycle;
fill(top, white);
fill(bot , rgb(175,197,137));
