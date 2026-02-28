extends ColorRect

@onready var are_u_sure_exit = get_parent()
@onready var control_node = are_u_sure_exit.get_parent()
@onready var exit_button = control_node.get_node("Exit_Button")


@onready var yes_button = get_node("yes_Button")
@onready var no_button = get_node("no_Button")
@onready var label = get_node("Label")

@onready var click_sound = control_node.get_node("sounds/click_sound")

func _ready() -> void :
    self.visible = false

    exit_button.pressed.connect( func():
        self.visible = true
        click_sound.play()
    )

    yes_button.pressed.connect( func():
        click_sound.play()
        get_tree().quit()
    )

    no_button.pressed.connect( func():
        click_sound.play()
        self.visible = false
    )
