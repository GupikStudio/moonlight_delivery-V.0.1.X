extends RichTextLabel



func _ready() -> void :
    if Global.CurrentLanguage == "en":
        self.text = "This game is fully\n\topen-source.\nYou can visit Github for source-code."


    elif Global.CurrentLanguage == "tr":
        self.text = "bu oyun tamamen\n\taçık kaynak.\nkaynak koduna githubdan erişebilirsiniz."


    Global.CurrentLanguage_changed.connect( func():
        if Global.CurrentLanguage == "en":
            self.text = "This game is fully\n\topen-source.\nYou can visit Github for source-code."


        elif Global.CurrentLanguage == "tr":
            self.text = "bu oyun tamamen\n\t\taçık kaynak.\n\tkaynak koduna githubdan erişebilirsiniz."


    )
