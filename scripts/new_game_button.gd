extends TextureButton


func _ready() -> void :
    if Global.CurrentLanguage == "en":
        texture_normal = load("res://İmages/Textures/Buttons/new_game_button2.png")
    elif Global.CurrentLanguage == "tr":
        texture_normal = load("res://İmages/Textures/Buttons/yeni_oyun_buton.png")

    Global.CurrentLanguage_changed.connect( func():
        if Global.CurrentLanguage == "en":
            texture_normal = load("res://İmages/Textures/Buttons/new_game_button2.png")
        elif Global.CurrentLanguage == "tr":
            texture_normal = load("res://İmages/Textures/Buttons/yeni_oyun_buton.png")
    )
