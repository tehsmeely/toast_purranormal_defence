@tool
class_name UidTools
extends Resource

@export var toggle: bool = false:
	set(new_toggle):
		toggle = new_toggle
		set_togglea(new_toggle)

func ready():
	print("woooooble")
	pass

	
func set_togglea(new_toggle):
	var resource_uid = ResourceUID.create_id()
	print(ResourceUID.id_to_text(resource_uid))
