@tool
extends EditorPlugin

const constants := preload("res://addons/create_comment/Scripts/constants.gd")

var _btn: Button

func _enter_tree():
	_btn = Button.new()
	_btn.text = "{ # }"
	_btn.tooltip_text = "Toggle comment on selected lines (or current line)"
	_btn.pressed.connect(_on_button_pressed)
	add_control_to_container(CONTAINER_TOOLBAR, _btn)

func _exit_tree():
	remove_control_from_container(CONTAINER_TOOLBAR, _btn)
	_btn.queue_free()

func _on_button_pressed():
	var script_editor := get_editor_interface().get_script_editor()
	if script_editor == null:
		return
	var tab := script_editor.get_current_editor()
	if tab == null or not tab.has_method("get_base_editor"):
		return
	var code_edit := tab.get_base_editor()
	if code_edit == null:
		return
	_toggle_comment(code_edit)

func _toggle_comment(te):
	var from_line = te.get_selection_from_line()
	var to_line = te.get_selection_to_line()

	if from_line == -1:
		from_line = te.get_caret_line()
		to_line   = from_line

	if from_line > to_line:
		var tmp = from_line
		from_line = to_line
		to_line = tmp

	var will_comment: bool = false
	for i in range(from_line, to_line + 1):
		var txt = te.get_line(i).strip_edges(true, false)
		if not txt.begins_with("#"):
			will_comment = true
			break

	te.begin_complex_operation()
	for i in range(from_line, to_line + 1):
		var original = te.get_line(i)
		var modified = original

		if will_comment:
			modified = constants.COMMENT + original
		else:
			var idx = original.find("#")
			if idx != -1:
				var after = original.substr(idx + 1)
				if after.begins_with(" "):
					after = after.substr(1)  # remove single space
				modified = original.substr(0, idx) + after
		te.set_line(i, modified)
	te.end_complex_operation()
