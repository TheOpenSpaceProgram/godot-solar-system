extends Node2D

# Astronomical unit in (m).
const AU = 1.496 * pow(10, 11)

# Game pixel relationship to meters in (m).
const PX = pow(10, 9)

# Gravitational constant in (m^3 kg^-1 s-2).
const G = 6.67408 * pow(10, -11)

# Convert gravity constant to pixel units. (px^3 kg^-1 s^-2)
var grav_const = 6.67408 * pow(10, -11) / pow(PX, 3)

# Convert astronomical unit to pixel units.
var astro_unit = AU / PX

func _ready():
	# Move the Sun to the center of the viewport.
	get_node("Sun").set_pos(Vector2(get_viewport().get_rect().size.width/2, get_viewport().get_rect().size.height/2))