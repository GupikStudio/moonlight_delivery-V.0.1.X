extends TextureButton

var x = true
@onready var control = get_parent()
@onready var GupikStudio = control.get_node("GupikStudio")

@onready var sounds = control.get_node("sounds")
@onready var sound = sounds.get_node("ana_menu_sound")

func _sound_loop():
    while true:
        if x == true:
            sound.play()
            await get_tree().create_timer(37).timeout
        else:
            break


func _ready() -> void :
    GupikStudio.visible = true
    await get_tree().create_timer(0.5).timeout
    if sound:
        _sound_loop()
    else:
        print("SES BULUNUMADI")
    await get_tree().create_timer(0.5).timeout
    var tween = create_tween()
    tween.tween_property(GupikStudio, "self_modulate:a", 0, 3)
    await get_tree().create_timer(3).timeout
    GupikStudio.visible = false

func _pressed() -> void :
    if x == true:
        texture_normal = load("res://İmages/Textures/Buttons/ses_kapali.png")
        sound.stop()
        x = false
    else:
        texture_normal = load("res://İmages/Textures/Buttons/ses_acik.png")
        sound.play()
        x = true
