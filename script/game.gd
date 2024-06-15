class_name Game
extends Control

# The origin scene. Manages scene changes.
var current_scene

func _ready():
	change_scene(TitleScreen.new_title_screen())
	
func change_scene(scene):
	if current_scene: remove_child(current_scene)
	
	for tween in get_tree().get_processed_tweens():
		tween.kill()
	
	current_scene = scene
	add_child(current_scene)
