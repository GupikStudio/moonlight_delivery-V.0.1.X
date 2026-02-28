extends TextureButton

func _ready() -> void :
    if Global.CurrentLanguage == "en":
        texture_normal = load("res://İmages/Textures/Buttons/no_button.png")
    elif Global.CurrentLanguage == "tr":
        texture_normal = load("res://İmages/Textures/Buttons/hayır_buton.png")

    Global.CurrentLanguage_changed.connect( func():
        if Global.CurrentLanguage == "en":
            texture_normal = load("res://İmages/Textures/Buttons/no_button.png")
        elif Global.CurrentLanguage == "tr":
            texture_normal = load("res://İmages/Textures/Buttons/hayır_buton.png")
    )
