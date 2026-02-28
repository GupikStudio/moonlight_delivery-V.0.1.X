extends AnimatedSprite2D


@onready var control = get_parent().get_parent()
@onready var sounds = control.get_node("sounds")
@onready var alarm_sound = sounds.get_node("alarm_sound")
@onready var bomb_sound = sounds.get_node("bomb_sound")
@onready var ana_menu_sound = sounds.get_node("ana_menu_sound")
@onready var click_sound = sounds.get_node("click_sound")

@onready var karamanter_root = get_parent()
@onready var colorrect = karamanter_root.get_node("ColorRect")
@onready var rich_text = colorrect.get_node("RichTextLabel")
@onready var video = colorrect.get_node("VideoStreamPlayer")

@onready var button = control.get_node("settings").get_node("ColorRect").get_node("DONOTCLICK")

var time = 3

func boom() -> void :
    click_sound.play()
    ana_menu_sound.stop()
    colorrect.visible = true
    self.visible = true
    self.play("karamanter_walk")

    alarm_sound.play()
    var tween = create_tween()
    tween.tween_property(
        self, 
        "position", 
        Vector2(592.0, 372.0), 
        time
    )

    await get_tree().create_timer(time).timeout
    bomb_sound.play()
    self.play("karamanter_explotion")
    await animation_finished
    colorrect.color = Color.BLACK
    rich_text.visible = true
    visible = false
    await get_tree().create_timer(3).timeout
    rich_text.visible = false
    video.show()
    video.visible = true
    video.play()
    video.finished.connect( func():
        get_tree().quit()
    )



func _ready() -> void :
    if Global.CurrentLanguage == "en":
        rich_text.text = "I SAID DO NOT CLİCK \n\t\t-ProfDrOsman"

    elif Global.CurrentLanguage == "tr":
        rich_text.text = "SANA TIKLAMA DEMİŞTİM\n\t\t-ProfDrOsman"

    colorrect.visible = false
    self.visible = false
    rich_text.visible = false
    button.pressed.connect(boom)

    Global.CurrentLanguage_changed.connect( func():
        if Global.CurrentLanguage == "en":
            rich_text.text = "I SAID DO NOT CLİCK\n\t\t\t-ProfDrOsman"

        elif Global.CurrentLanguage == "tr":
            rich_text.text = "SANA TIKLAMA DEMİŞTİM\n\t\t\t-ProfDrOsman"

    )
