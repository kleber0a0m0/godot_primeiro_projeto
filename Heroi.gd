extends KinematicBody2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var movimento = Vector2()

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

func _physics_process(delta):
	if Input.is_action_pressed("ui_right"):
		movimento.x = 300
		$AnimatedSprite.play("andando")
		$AnimatedSprite.flip_h = false
	elif Input.is_action_pressed("ui_left"):
		movimento.x = -300
		$AnimatedSprite.play("andando")
		$AnimatedSprite.flip_h = true
	else:
		movimento.x = 0
		$AnimatedSprite.play("parado")
	movimento = move_and_slide(movimento)
