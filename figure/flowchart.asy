settings.outformat="pdf";
unitsize(5cm);
import flowchart;
//block block1=rectangle(Label("Example",magenta),
//pack(Label("Start:",heavygreen),"",Label("$A:=0$",blue),
// "$B:=1$"),(-0.5,3),palegreen,paleblue,red);
//block block2=diamond(Label("Choice?",blue),(0,2),palegreen,red);
//block block3=roundrectangle("Do something",(-1,1));
//block block4=bevel("Don't do something",(1,1));
//block block5=circle("End",(0,0));
block block1=roundrectangle("Mesh reading",(0,0),lightolive);
block block2=roundrectangle(pack(Label("Assembling 3D problem"),""
,Label("Assembling 1D problem")),(1.,0),lightolive);
block block3=roundrectangle("Solution",(2.,0),lightolive);
block block4=roundrectangle("Print",(2.75,0),lightolive);
block block5=roundrectangle("SAMG interface",(2.,0.4),lightred);
block block6=roundrectangle("AMG",(2.75,0.4),lightred);
draw(block1);
draw(block2);
draw(block3);
draw(block4);
draw(block5);draw(block6);
add(new void(picture pic, transform t) {
blockconnector operator --=blockconnector(pic,t);
//    draw(pic,block1.right(t)--block2.top(t));
block1--Right--Arrow--block2--Right--Arrow--block3--Right--Arrow--block4;
block2--Right--Up--Right--Arrow--block5--Right--Arrow--block6--Down--Arrow--block4;
;
});
