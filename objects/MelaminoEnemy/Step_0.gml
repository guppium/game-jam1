if (image_index >= 12) {
    instance_create_depth(x, y, 0, MelaminoDrop)
}
if path_position == 1 or path_position == 0 {
    image_xscale *= -1
}

if alarm[0] <= 0 {
    HitPlayer = MobDamage(id)
    
    if HitPlayer { 
        alarm[0] = 60
        HitPlayer = false
    }
}