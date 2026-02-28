extends Button

func _ready() -> void :
    if Global.CurrentLanguage == "en":
        self.text = "Change Language"
    elif Global.CurrentLanguage == "tr":
        self.text = "Dil Değiştir"

    Global.CurrentLanguage_changed.connect( func():
        if Global.CurrentLanguage == "en":
            self.text = "Change Language"
        elif Global.CurrentLanguage == "tr":
            self.text = "Dil Değiştir"
    )

func _pressed():
    if Global.CurrentLanguage == "en":
        Global.ChangeLanguage("tr")
    elif Global.CurrentLanguage == "tr":
        Global.ChangeLanguage("en")
