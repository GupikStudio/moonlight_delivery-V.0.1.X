extends RichTextLabel



func _ready() -> void :
    if Global.CurrentLanguage == "en":
        self.text = "Settings"
    elif Global.CurrentLanguage == "tr":
        self.text = "Ayarlar"
    Global.CurrentLanguage_changed.connect( func():
        if Global.CurrentLanguage == "en":
            self.text = "Settigs"
        elif Global.CurrentLanguage == "tr":
            self.text = "Ayarlar"
    )
