///reveal(x,y)
var xx = argument[0];
var yy = argument[1];

revealNextCell(xx-1,yy);
revealNextCell(xx+1,yy);
revealNextCell(xx,yy-1);
revealNextCell(xx,yy+1);

revealNextCell(xx-1,yy-1);
revealNextCell(xx+1,yy+1);
revealNextCell(xx-1,yy+1);
revealNextCell(xx+1,yy-1);
