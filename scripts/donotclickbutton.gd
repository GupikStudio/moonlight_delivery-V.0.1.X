extends Button



func _ready() -> void :
    if Global.CurrentLanguage == "en":
        self.text = "DO NOT CLİCK"
    elif Global.CurrentLanguage == "tr":
        self.text = "TIKLAMAA!"

    Global.CurrentLanguage_changed.connect( func():
        if Global.CurrentLanguage == "en":
            self.text = "DO NOT CLİCK"
        elif Global.CurrentLanguage == "tr":
            self.text = "TIKLAMAA!"
    )
