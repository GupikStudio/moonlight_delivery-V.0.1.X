extends TextureButton


func _ready() -> void :
    if Global.CurrentLanguage == "en":
        texture_normal = load("res://İmages/Textures/Buttons/exit_button2.png")
    elif Global.CurrentLanguage == "tr":
        texture_normal = load("res://İmages/Textures/Buttons/oyundan_çık.png")

    Global.CurrentLanguage_changed.connect( func():
        if Global.CurrentLanguage == "en":
            texture_normal = load("res://İmages/Textures/Buttons/exit_button2.png")
        elif Global.CurrentLanguage == "tr":
            texture_normal = load("res://İmages/Textures/Buttons/oyundan_çık.png")
    )
