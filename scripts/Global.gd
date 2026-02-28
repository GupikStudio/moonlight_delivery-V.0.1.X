extends Node

signal CurrentLanguage_changed
var CurrentLanguage = "tr"
@onready var click_sound = AudioStreamPlayer.new()

func _ready():
    add_child(click_sound)
    click_sound.stream = load("res://sound/clickar.mp3")


func ChangeLanguage(New_language):
    CurrentLanguage = New_language
    CurrentLanguage_changed.emit()
    print("the language is", CurrentLanguage)

func play_click_sound():
    click_sound.play()
