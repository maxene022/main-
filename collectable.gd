extends Area2D
@onready var game_manager: Node = %GameManager


func _on_body_entered(body: Node2D) -> void:
	pass # Replace with function body.
	if (body.name == "CharacterBody2D"):
		queue_free()
		game_manager.add_point()
