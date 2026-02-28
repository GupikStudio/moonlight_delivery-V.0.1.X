extends Button


func _ready() -> void :
    if Global.CurrentLanguage == "en":
        self.text = "Change Cursor"
    elif Global.CurrentLanguage == "tr":
        self.text = "İmleç Değiştir"

    Global.CurrentLanguage_changed.connect( func():
        if Global.CurrentLanguage == "en":
            self.text = "Change Cursor"
        elif Global.CurrentLanguage == "tr":
            self.text = "İmleç Değiştir"
    )

func _pressed() -> void :
    Global.play_click_sound()
