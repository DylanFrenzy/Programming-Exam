extends CharacterBody2D

signal player_death

const SPEED = 300.0
const Rot_speed = 40000

@onready var timer = $"../Timer"

func _process(delta):
	pass
func _physics_process(delta):

	var direction := Input.get_axis("forward", "back")
	var rotation = 0
	var collision = move_and_collide(velocity * delta)
	if collision:
		var collider = collision.get_collider().name
		if collider == "evil_godooer":
			die()
	get_input()
	
	move_and_slide()
	
func get_input():
	look_at(get_global_mouse_position())
	velocity = transform.x * Input.get_axis("back", "forward") * SPEED
	
func die():
	queue_free()
	emit_signal("player_death")
