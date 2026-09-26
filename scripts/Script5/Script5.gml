function Attack(){
    for (var i = 0; i < instance_number(MelaminoEnemy); i++) {
        var inst = instance_find(MelaminoEnemy, i)
        
        var IsInRangeMinX = Player_Object.x + global.PlayerAttackRange >= inst.x
        var IsInRangeMaxX = Player_Object.x - global.PlayerAttackRange <= inst.x 
        var IsInRangeMinY = Player_Object.y + global.PlayerAttackRange >= inst.y
        var IsInRangeMaxY = Player_Object.y - global.PlayerAttackRange <= inst.y 
        
        var IsInRangeX = IsInRangeMaxX and IsInRangeMinX
        var IsInRangeY = IsInRangeMaxY and IsInRangeMinY
        show_debug_message(IsInRangeMinX and IsInRangeMaxX)
        show_debug_message(Player_Object.x)
        show_debug_message("----------")
        
        if IsInRangeX == true and IsInRangeY == true {
            show_debug_message("In Range To Attack")
            show_debug_message("----------")
            instance_destroy(inst)
        }
    }
}

var MobRange = 3
function MobDamage(instj){
    var Result = false
    with(instj){
        if not instance_exists(Player_Object) {Result = 0; break}
        var IsInRangeMinX = Player_Object.x + global.EnemyAttackRange >= instj.x 
        var IsInRangeMaxX = Player_Object.x - global.EnemyAttackRange <= instj.x 
        var IsInRangeMinY = Player_Object.y + global.EnemyAttackRange >= instj.y 
        var IsInRangeMaxY = Player_Object.y - global.EnemyAttackRange <= instj.y 
        
        var IsInRangeX = IsInRangeMaxX and IsInRangeMinX
        var IsInRangeY = IsInRangeMaxY and IsInRangeMinY
        
        if IsInRangeX == true and IsInRangeY == true {
            show_debug_message("Player Preso")
            global.PlayerHP -= 1
            Result = true
        } else Result = false
    }
    return Result
}