extends Label

func _ready() -> void :
    if Global.CurrentLanguage == "en":
        self.text = "Change Cursor Color"
    elif Global.CurrentLanguage == "tr":
        self.text = "İmleç Rengi Değiştir"

    Global.CurrentLanguage_changed.connect( func():
        if Global.CurrentLanguage == "en":
            self.text = "Change Cursor Color"
        elif Global.CurrentLanguage == "tr":
            self.text = "İmleç Rengini Değiştir"
        )
