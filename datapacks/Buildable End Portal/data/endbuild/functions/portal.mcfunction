setblock ~ ~ ~ minecraft:structure_block[mode=load]{metadata:"",mirror:"NONE",ignoreEntities:1b,powered:0b,seed:0L,author:"LeonNikolai",rotation:"NONE",posX:-2,mode:"LOAD",posY:-1,sizeX:5,posZ:-2,integrity:1.0f,showair:0b,name:"endbuild:frame",sizeY:2,sizeZ:5,showboundingbox:1b}
setblock ~ ~-1 ~ minecraft:redstone_block
summon creeper ~ ~ ~ {Fuse:0,ExplosionRadius:10}
playsound minecraft:block.end_portal.spawn block @a ~ ~ ~ 1 0 0
particle minecraft:dripping_lava ~0 ~1 ~0 2 2 2 .02 100
particle minecraft:soul_fire_flame ~0 ~1 ~0 1 1 -1 .01 100
kill @s
