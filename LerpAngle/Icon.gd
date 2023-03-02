extends Sprite

onready var scroll = get_parent().get_node("HScrollBar")
onready var scroll_init = get_parent().get_node("HScrollBarInit")
onready var scroll_final = get_parent().get_node("HScrollBarFinal")
onready var texto = get_parent().get_node("Label")

var rot_init = 0
var rot_final = 0

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	rotation = lerp_angle(deg2rad(rot_init), deg2rad(rot_final), scroll.value)
	
	texto.text = "Weight = " + str(scroll.value) + '\n'
	texto.text += "Rotação inicial = " + str(rot_init) + '\n'
	texto.text += "Rotação final = " + str(rot_final) + '\n'
	texto.text += "Rotação atual = " + str(int(rad2deg(rotation))) + "°\n"


func _on_HScrollBarInit_value_changed(value):
	rot_init = value


func _on_HScrollBarFinal_value_changed(value):
	rot_final = value
