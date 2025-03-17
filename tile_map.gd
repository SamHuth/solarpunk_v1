extends TileMap

enum layers {
	level_0 = 0,
	level_1 = 1,
	level_2 = 2
}

const grid_size = 21

const blue_block_atlas_pos = Vector2i(0, 0)
const green_block_atlas_pos = Vector2i(2, 0)
const red_block_atlas_pos = Vector2i(1, 0)
const black_block_atlas_pos = Vector2i(4, 0)

const main_source = 0

func _ready() -> void:
	for y in range(grid_size):
		for x in range(grid_size):
			if x == 0 || x == grid_size -1 || y == 0 || y == grid_size -1:
				set_cell(layers.level_0, Vector2i(2 + x, 2 + y), main_source, black_block_atlas_pos)
			elif x == 4 && y == 4:
				set_cell(layers.level_0, Vector2i(2 + x, 2 + y), main_source, black_block_atlas_pos)
			else:
				set_cell(layers.level_0, Vector2i(2 + x, 2 + y), main_source, green_block_atlas_pos)
				
	
	set_cell(layers.level_1, Vector2i(2, 8), main_source, blue_block_atlas_pos)
	set_cell(layers.level_1, Vector2i(5, 6), main_source, blue_block_atlas_pos)
	set_cell(layers.level_1, Vector2i(8, 2), main_source, blue_block_atlas_pos)
