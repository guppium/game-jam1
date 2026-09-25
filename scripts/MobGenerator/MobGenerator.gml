function GenerateMob(tipe, PosX, PosY){
    var NewMob = instance_copy(tipe)
    NewMob.x = PosX
    NewMob.y = PosY
}