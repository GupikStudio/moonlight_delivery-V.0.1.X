extends Control

var x = 1
var y = "hel0 wOeD"
var z = true

@onready var arkapilav = get_node("TextureRect")

func topla(num, num2):
    print(num + num2)

func _ready() -> void :
    arkapilav.visible = true


var num = 0

func _pressed():
    num = num + 1
    if num == 10:
        pass
    else:
        pass
