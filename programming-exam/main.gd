extends Node
var enemy_count = [0, 1, 2 , 3, 4]
var enemy_mult = 1
@onready var bad_guy : PackedScene = preload("res://evil_godooer.tscn")
@onready var enemy_path = $Path2D/PathFollow2D
var enemies_spawned = []
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	
	pass
	


func _on_timer_timeout() -> void:
	if enemy_mult < 7:
		enemy_mult += 1
		spawn()
	pass # Replace with function body.

func spawn():
	for i in enemy_count:
		var new_enemy = bad_guy.instantiate()
		add_child(new_enemy)
		new_enemy.position = Vector2((randf() * (randi() % 10)), (randf() * (randi() % 10)))
		enemies_spawned.append(new_enemy)
		enemy_path.progress_ratio = randf();
		new_enemy.position = enemy_path.position;
		
