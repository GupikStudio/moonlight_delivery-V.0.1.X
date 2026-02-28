extends TextureButton

@onready var control = get_parent()
@onready var settings = control.get_node("settings")
@onready var colorrect = settings.get_node("ColorRect")
@onready var close_button = colorrect.get_node("Close_Button")
@onready var github = colorrect.get_node("Github_Button")
@onready var carrd = colorrect.get_node("Carrd_Button")
@onready var click_sound = control.get_node("sounds/click_sound")
@onready var change_cursor = settings.get_node("ChangeCursor/ColorRect")

func _ready() -> void :
    colorrect.visible = false

    close_button.pressed.connect( func():
        click_sound.play()
        colorrect.visible = false
        change_cursor.visible = false
    )

    github.pressed.connect( func():
        click_sound.play()
        OS.shell_open("https://www.github.com/GupikStudio")
    )

    carrd.pressed.connect( func():
        click_sound.play()
        OS.shell_open("https://gupikdev.carrd.co/")
    )

func _pressed() -> void :
    click_sound.play()
    if colorrect.visible == true:
        colorrect.visible = false
        change_cursor.visible = false
    else:
        colorrect.visible = true
