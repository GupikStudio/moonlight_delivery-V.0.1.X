extends Control

@onready var clrrec = get_node("background_visiblity_tween")

@onready var sound_button = get_node("Sound_Button")
@onready var settings_button = get_node("Settings_Button")

@onready var newgame_button = get_node("NewGame_Button")
@onready var continue_button = get_node("Continue_Button")
@onready var exit_button = get_node("Exit_Button")

@onready var click_sound = get_node("sounds/click_sound")


var time = 3

func _start_tween():
    while true:
        var tween_for_background = create_tween()
        print("Görünürlük artıyor...")
        tween_for_background.tween_property(clrrec, "self_modulate:a", 1, time)
        await tween_for_background.finished

        print("Görünürlük azalıyor...")
        var tween_for_background2 = create_tween()
        tween_for_background2.tween_property(clrrec, "self_modulate:a", 0, time)
        await tween_for_background2.finished



func _ready() -> void :
    print(Global.CurrentLanguage)
    _start_tween()

    sound_button.pressed.connect( func():
        click_sound.play()
    )

    settings_button.pressed.connect( func():
        click_sound.play()
    )

    newgame_button.pressed.connect( func():
        click_sound.play()
    )

    continue_button.pressed.connect( func():
        click_sound.play()
    )

    exit_button.pressed.connect( func():
        click_sound.play()
    )
