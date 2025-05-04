extends AnimationPlayer


func _on_animation_changed(old_name: StringName, new_name: StringName) -> void:
	print("AnimationPlayer: Animation Changed: %s -> %s" % old_name, new_name)


func _on_current_animation_changed(name: String) -> void:
	print("AnimationPlayer: Current animation Changed: %s" % name)
