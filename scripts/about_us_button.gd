extends Button



func _ready() -> void :
    if Global.CurrentLanguage == "en":
        self.text = "About Us"
    elif Global.CurrentLanguage == "tr":
        self.text = "Hakkımızda"

    Global.CurrentLanguage_changed.connect( func():
        if Global.CurrentLanguage == "en":
            self.text = "About Us"
        elif Global.CurrentLanguage == "tr":
            self.text = "Hakkımızda"
    )

func _pressed() -> void :
    Global.play_click_sound()
