extends Node

var checkpoint_pos: Vector2 = Vector2(-999, -999)
var previous_checkpoint_node: Sprite2D = null

var current_coin_count = 0
var saved_coin_count = 0

var death_count = 0

var current_time_taken
var time_taken

var level_num = 0

var total_total_number_death = 0
var total_total_time_take = 0
var total_total_coins_got = 0
