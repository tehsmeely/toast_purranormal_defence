extends Node2D

signal hit_body(body: Node2D)
signal attack_finished

var enabled := false

func _ready() -> void:
	$Hurtbox.body_entered.connect(on_hurtbox_body_entered)
	var sprite = $AnimatedSprite2D
	sprite.animation_finished.connect(on_sprite_finished)
	sprite.visible = false
	
func start() -> void:
	self.enabled = true
	var sprite = $AnimatedSprite2D
	sprite.visible = true
	sprite.play("default")
	
func on_sprite_finished():
	self.enabled = false
	$AnimatedSprite2D.visible = false
	attack_finished.emit()
	
	
func on_hurtbox_body_entered(body : Node2D):
	if self.enabled:
		self.hit_body.emit(body)
