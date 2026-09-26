function Attack(){
    var PlyrAtck = 20
    for (var i = 0; i < instance_number(MelaminoEnemy); i++) {
        var inst = instance_find(MelaminoEnemy, i)
        
        var IsInRangeMinX = Player_Object.x + PlyrAtck >= inst.x
        var IsInRangeMaxX = Player_Object.x - PlyrAtck <= inst.x 
        var IsInRangeMinY = Player_Object.y + PlyrAtck >= inst.y
        var IsInRangeMaxY = Player_Object.y - PlyrAtck <= inst.y 
        
        var IsInRangeX = IsInRangeMaxX and IsInRangeMinX
        var IsInRangeY = IsInRangeMaxY and IsInRangeMinY
        show_debug_message(IsInRangeMinX and IsInRangeMaxX)
        show_debug_message(Player_Object.x)
        show_debug_message("----------")
        
        if IsInRangeX == true and IsInRangeY == true {
            show_debug_message("In Ragne To Attack")
            show_debug_message("----------")
            instance_destroy(inst)
        }
    }
}