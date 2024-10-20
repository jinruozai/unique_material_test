extends Node3D

@onready var plane1:MeshInstance3D = $Plane1/Plane
@onready var plane2:MeshInstance3D = $Plane2/Plane

const ICON_1 = preload("res://icon.png")
const ICON_2 = preload("res://icon2.png")

func _ready():
	# 替换 box 的材质贴图
	set_plane_mat(plane1,ICON_1)
	set_plane_mat(plane2,ICON_2)

func set_plane_mat(tag,tex):
	var mat:ShaderMaterial = tag.mesh.surface_get_material(0)
	if mat:
		var newmat=mat.duplicate(true)
		newmat.set_shader_parameter("material_icon", ICON_1)
		tag.mesh.surface_set_material(0,newmat)
