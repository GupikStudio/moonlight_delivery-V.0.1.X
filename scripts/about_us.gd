extends ColorRect
@onready var control = get_parent().get_parent()
@onready var settings_button = control.get_node("settings/ColorRect/AboutUs")
@onready var close_button = get_node("Close_Button")

@onready var sound = control.get_node("sounds/click_sound")

func _ready() -> void :
    self.visible = false

    settings_button.pressed.connect( func():
        self.visible = true
        sound.play()
    )

    close_button.pressed.connect( func():
        self.visible = false
        sound.play()
    )
