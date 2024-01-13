extends RigidBody2D
	
var movement_speed = 300
	
func _physics_process(_delta):
	var upPressed = Input.is_action_pressed("move_up")
	var downPressed = Input.is_action_pressed("move_down")
	var leftPressed = Input.is_action_pressed("move_left")
	var rightPressed = Input.is_action_pressed("move_right")
	
	if upPressed: 
		apply_force(Vector2(0,-movement_speed))
		
	if downPressed:
		apply_force(Vector2(0,movement_speed))
		
	if leftPressed:
		apply_force(Vector2(-movement_speed,0))
		
	if rightPressed:
		apply_force(Vector2(movement_speed,0))
