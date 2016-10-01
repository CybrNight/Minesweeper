///revealEmpty(x,y)

var xx = argument[0];
var yy = argument[1];

var width = ds_grid_width(grid);
var height = ds_grid_height(grid);

if (grid[#xx+1,yy] == TILE_EMPTY){
    position_destroy((xx+1)*TILE_WIDTH,yy*TILE_HEIGHT);
    revealEmpty(xx+1,yy);
}


