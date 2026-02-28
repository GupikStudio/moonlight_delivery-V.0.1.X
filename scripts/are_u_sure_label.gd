extends Label

func _ready() -> void :
    if Global.CurrentLanguage == "en":
        self.text = "Are you sure?"
    elif Global.CurrentLanguage == "tr":
        self.text = "Çıkmak istermisiniz?"

    Global.CurrentLanguage_changed.connect( func():
        if Global.CurrentLanguage == "en":
            self.text = "Are you sure?"
        elif Global.CurrentLanguage == "tr":
            self.text = "Çıkmak istermisiniz?"
        )
