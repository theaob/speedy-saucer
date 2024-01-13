extends RigidBody2D
    
const MOVEMENT_SPEED = 1000
    
func _physics_process(_delta):
    var upPressed = Input.is_action_pressed("move_up")
    var downPressed = Input.is_action_pressed("move_down")
    var leftPressed = Input.is_action_pressed("move_left")
    var rightPressed = Input.is_action_pressed("move_right")
    
    var yForce = 0
    var xForce = 0
    
    if upPressed: yForce += -MOVEMENT_SPEED
    if downPressed: yForce += MOVEMENT_SPEED
    if leftPressed: xForce += -MOVEMENT_SPEED
    if rightPressed: xForce += MOVEMENT_SPEED
        
    apply_force(Vector2(xForce, yForce))
