///revealNextCell(x,y);

var xx = argument[0];
var yy = argument[1];

var width = ds_grid_width(grid);
var height = ds_grid_width(grid);

if ((xx > width) || (xx < -1) || (yy > height) || (yy < -1)) return noone;
if (!position_meeting(xx*TILE_WIDTH,yy*TILE_HEIGHT,obj_tile)) return noone;

if (grid[#xx,yy] == TILE_EMPTY){
    position_destroy(xx*TILE_WIDTH,yy*TILE_HEIGHT);
    //Left, Right, Up, Down
    if (grid[#xx+1,yy] > 0 && grid[#xx+1,yy] < 9) position_destroy((xx+1)*TILE_WIDTH,yy*TILE_HEIGHT);
    if (grid[#xx-1,yy] > 0 && grid[#xx-1,yy] < 9) position_destroy((xx-1)*TILE_WIDTH,yy*TILE_HEIGHT);
    if (grid[#xx,yy+1] > 0 && grid[#xx,yy+1] < 9) position_destroy(xx*TILE_WIDTH,(yy+1)*TILE_HEIGHT);
    if (grid[#xx,yy-1] > 0 && grid[#xx,yy-1] < 9) position_destroy(xx*TILE_WIDTH,(yy-1)*TILE_HEIGHT);
    
    //Up Left, Up Right, Down Left, Down Right
    if (grid[#xx-1,yy-1] > 0 && grid[#xx-1,yy-1] < 9) position_destroy((xx-1)*TILE_WIDTH,(yy-1)*TILE_HEIGHT);
    if (grid[#xx+1,yy-1] > 0 && grid[#xx+1,yy-1] < 9) position_destroy((xx+1)*TILE_WIDTH,(yy-1)*TILE_HEIGHT);
    if (grid[#xx-1,yy+1] > 0 && grid[#xx-1,yy+1] < 9) position_destroy((xx-1)*TILE_WIDTH,(yy+1)*TILE_HEIGHT);
    if (grid[#xx+1,yy+1] > 0 && grid[#xx+1,yy+1] < 9) position_destroy((xx+1)*TILE_WIDTH,(yy+1)*TILE_HEIGHT);
    reveal(xx,yy)
}
