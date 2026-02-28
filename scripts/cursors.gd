extends ColorRect

@onready var click_sound = get_parent().get_parent().get_parent().get_node("sounds/click_sound")


@onready var white_cursor = load("res://İmages/Textures/cursors/white_cursor.png")
@onready var yellow_cursor = load("res://İmages/Textures/cursors/yellow_cursor.png")
@onready var red_cursor = load("res://İmages/Textures/cursors/red_cursor.png")
@onready var purple_cursor = load("res://İmages/Textures/cursors/purple_cursor.png")
@onready var pink_cursor = load("res://İmages/Textures/cursors/pink_cursor.png")
@onready var blue_cursor = load("res://İmages/Textures/cursors/blue_cursor.png")


@onready var white_cursor_button = get_node("white_cursor_button")
@onready var yellow_cursor_button = get_node("yellow_cursor_button")
@onready var red_cursor_button = get_node("red_cursor_button")
@onready var purple_cursor_button = get_node("purple_cursor_button")
@onready var pink_cursor_button = get_node("pink_cursor_button")
@onready var blue_cursor_button = get_node("blue_cursor_button")

@onready var button = get_parent().get_parent().get_node("ColorRect/ChangeCursor")
@onready var Close_button = get_node("Close_Button")

func _ready() -> void :
    self.visible = false
    button.pressed.connect( func():
        self.visible = true
    )
    Close_button.pressed.connect( func():
        self.visible = false
        Global.play_click_sound()
    )

    white_cursor_button.pressed.connect( func():
        click_sound.play()
        Input.set_custom_mouse_cursor(white_cursor)
    )

    yellow_cursor_button.pressed.connect( func():
        click_sound.play()
        Input.set_custom_mouse_cursor(yellow_cursor)
    )

    red_cursor_button.pressed.connect( func():
        click_sound.play()
        Input.set_custom_mouse_cursor(red_cursor)
    )

    red_cursor_button.pressed.connect( func():
        click_sound.play()
        Input.set_custom_mouse_cursor(red_cursor)
    )

    purple_cursor_button.pressed.connect( func():
        click_sound.play()
        Input.set_custom_mouse_cursor(purple_cursor)
    )

    pink_cursor_button.pressed.connect( func():
        click_sound.play()
        Input.set_custom_mouse_cursor(pink_cursor)
    )

    blue_cursor_button.pressed.connect( func():
        click_sound.play()
        Input.set_custom_mouse_cursor(blue_cursor)
    )
