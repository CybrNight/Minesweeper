///generateGrid(x,y,width,height,mines)
randomize();
var tempGrid = ds_grid_create(room_width/TILE_WIDTH,room_height/TILE_HEIGHT);
var xxx = argument[0];
var yyy = argument[1];
var width = argument[2];
var height = argument[3];
var mines = argument[4];

var a = 0;
while (a <= mines){
   //get random mineX and mineY where grid(mineX, mineY) is not a mine
   show_debug_message(string(a));
   var mineX = irandom(width);
   var mineY = irandom(height);
   
   if (tempGrid[#mineX,mineY] != TILE_MINE && mineX != xxx && mineY != yyy){
       tempGrid[#mineX,mineY] = TILE_MINE;
       a++;
   }else{
       tempGrid[#mineX,mineY] = TILE_EMPTY; 
       a--;
   }
}


for (var xx = 0; xx < width; xx++){
    for (var yy = 0; yy < height; yy++){
        var num = 0;
        if (tempGrid[#xx,yy] == TILE_EMPTY){
            
            if (tempGrid[#xx+1,yy] == TILE_MINE){ num++; show_debug_message("Num1")}
            if (tempGrid[#xx+1,yy+1] == TILE_MINE) { num++; show_debug_message("Num2")}
            if (tempGrid[#xx,yy+1] == TILE_MINE) { num++; show_debug_message("Num3")}
            if (tempGrid[#xx-1,yy+1] == TILE_MINE) { num++; show_debug_message("Num4")}
            if (tempGrid[#xx-1,yy] == TILE_MINE) { num++; show_debug_message("Num5")}
            if (tempGrid[#xx-1,yy-1] == TILE_MINE) { num++; show_debug_message("Num6")}
            if (tempGrid[#xx,yy-1] == TILE_MINE) { num++; show_debug_message("Num7")}
            if (tempGrid[#xx+1,yy-1] == TILE_MINE) { num++; show_debug_message("Num8")}
            
            switch(num){
                case 0:
                    tempGrid[#xx,yy] = TILE_EMPTY;
                    break;
                case 1:
                    tempGrid[#xx,yy] = TILE_1
                    break;
                case 2:
                    tempGrid[#xx,yy] = TILE_2
                    break;
                case 3:
                    tempGrid[#xx,yy] = TILE_3
                    break;
                case 4:
                    tempGrid[#xx,yy] = TILE_4
                case 5:
                    tempGrid[#xx,yy] = TILE_5
                case 6:
                    tempGrid[#xx,yy] = TILE_6
                case 7:
                    tempGrid[#xx,yy] = TILE_7
                case 8:
                    tempGrid[#xx,yy] = TILE_8
            }
        }
    }
}
var tempVal = tempGrid[#xxx,yyy];
tempGrid[#xxx,yyy] = TILE_EMPTY
generated = true;
return tempGrid;
