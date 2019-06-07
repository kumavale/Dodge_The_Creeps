extends Sprite

const RIGHT = 0
const LEFT  = 1

var dir = LEFT
export var speed = 1

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if dir == LEFT:
		position.x -= speed * delta
	else:
		position.x += speed * delta

	if position.x <= -160:
		dir = RIGHT
	elif 640 <= position.x:
		dir = LEFT