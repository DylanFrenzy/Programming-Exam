extends Node2D
var collider = "MeshInstance2D/StaticBody2D/CollisionShape2D"
var velocity := Vector2(0,0)
@export var speed = 5
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass
	 # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
	
func _physics_process(delta: float) -> void:
	velocity = Vector2.LEFT * speed * delta
	pass
	
func _on_area_2d_area_entered(body: Area2D) -> void:
	if body == $Player:
		$Player.take_damage(1)
	pass # Replace with function body.
	
