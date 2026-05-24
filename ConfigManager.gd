extends RefCounted
class_name ConfigManager

# Статические переменные сохраняют данные при смене сцен без AutoLoad
static var points: int = 0
static var points_per_click: int = 1
static var auto_clicker_enabled: bool = false
static var auto_clicker_speed: float = 1.0 # Раз в сколько секунд кликает

# Цены для магазина
static var price_points_upgrade: int = 10
static var price_autoclicker: int = 25
