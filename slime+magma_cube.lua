--License for code WTFPL and otherwise stated in readmes

mobs:register_mob("mobs_mc:greensmall", {
	type = "monster",
	pathfinding = 1,
	group_attack = true,
	hp_min = 1,
	hp_max = 1,
	collisionbox = {-0.3, -0.3, -0.3, 0.3, 0.3, 0.3},
	visual_size = {x=0.6, y=0.6},
	textures = {
	{"green_slime_top.png", "green_slime_bottom.png", "green_slime_front.png", "green_slime_sides.png", "green_slime_sides.png", "green_slime_sides.png"}
	},
	-- TODO: Replace with mesh with animations
	visual = "cube",
	blood_texture ="green_slime_blood.png",
	rotate = 270,
	makes_footstep_sound = true,
	sounds = {
		jump = "green_slime_jump",
		death = "green_slime_death",
		damage = "green_slime_damage",
		attack = "green_slime_attack",
	},
	damage = 0,
	reach = 2.5,
	armor = 100,
	drops = {
		-- slimeball
		{name = "mesecons_materials:glue",
		chance = 1,
		min = 0,
		max = 2,},
		{name = "default:papyrus",
		chance = 1,
		min = 0,
		max = 2,},
	},
	animation = {
		speed_normal = 24,
		speed_run = 48,
		stand_start = 0,
		stand_end = 23,
		walk_start = 24,
		walk_end = 47,
		run_start = 48,
		run_end = 62,
		hurt_start = 64,
		hurt_end = 86,
		death_start = 88,
		death_end = 118,
	},
	drawtype = "front",
	water_damage = 0,
	lava_damage = 4,
	light_damage = 0,
	fall_damage = 0,
	view_range = 16,
	attack_type = "dogfight",
	passive = false,
	jump = true,
	walk_velocity = 0.7,
	run_velocity = 0.7,
	walk_chance = 0,
	jump_height = 3,
	jump_chance = 98,
	fear_height = 12,
})

mobs:register_mob("mobs_mc:greenmedium", {
	type = "monster",
	pathfinding = 1,
	group_attack = true,
	hp_min = 4,
	hp_max = 4,
	collisionbox = {-0.6, -0.6, -0.6, 0.6, 0.6, 0.6},
	visual_size = {x=1.2, y=1.2},
	textures = {
	{"green_slime_top.png", "green_slime_bottom.png", "green_slime_front.png", "green_slime_sides.png", "green_slime_sides.png", "green_slime_sides.png"}
	},
	-- TODO: Replace with mesh with animations
	visual = "cube",
	blood_texture ="green_slime_blood.png",
	rotate = 270,
	makes_footstep_sound = true,
	sounds = {
		jump = "green_slime_jump",
		death = "green_slime_death",
		damage = "green_slime_damage",
		attack = "green_slime_attack",
	},
	damage = 2,
	reach = 2.75,
	armor = 100,
	drops = {},
	animation = {
		speed_normal = 24,
		speed_run = 48,
		stand_start = 0,
		stand_end = 23,
		walk_start = 24,
		walk_end = 47,
		run_start = 48,
		run_end = 62,
		hurt_start = 64,
		hurt_end = 86,
		death_start = 88,
		death_end = 118,
	},
	drawtype = "front",
	water_damage = 0,
	lava_damage = 4,
	light_damage = 0,
	fall_damage = 0,
	view_range = 16,
	attack_type = "dogfight",
	passive = false,
	jump = true,
	walk_chance = 0,
	walk_velocity = 1.3,
	run_velocity = 1.3,
	jump_height = 4.3,
	jump_chance = 100,
	fear_height = 60,
	on_die = function(self, pos)
		local angle, posadd, dir
		angle = math.random(0, math.pi*2)
		for i=1,4 do
			dir = {x=math.cos(angle),y=0,z=math.sin(angle)}
			posadd = vector.multiply(vector.normalize(dir), 0.6)
			local slime = minetest.add_entity(vector.add(pos, posadd), "mobs_mc:greensmall")
			slime:setvelocity(dir)
			slime:setyaw(angle)
			angle = angle + math.pi/2
		end
	end
})

mobs:register_mob("mobs_mc:greenbig", {
	type = "monster",
	pathfinding = 1,
	group_attack = true,
	hp_min = 16,
	hp_max = 16,
	collisionbox = {-1.2, -1.2, -1.2, 1.2, 1.2, 1.2},
	visual_size = {x=2.4, y=2.4},
	textures = {
	{"green_slime_top.png", "green_slime_bottom.png", "green_slime_front.png", "green_slime_sides.png", "green_slime_sides.png", "green_slime_sides.png"}
	},
	-- TODO: Replace with mesh with animations
	visual = "cube",
	blood_texture ="green_slime_blood.png",
	rotate = 270,
	makes_footstep_sound = true,
	sounds = {
		jump = "green_slime_jump",
		death = "green_slime_death",
		damage = "green_slime_damage",
		attack = "green_slime_attack",
	},
	damage = 4,
	reach = 3,
	armor = 100,
	drops = {},
	animation = {
		speed_normal = 24,
		speed_run = 48,
		stand_start = 0,
		stand_end = 23,
		walk_start = 24,
		walk_end = 47,
		run_start = 48,
		run_end = 62,
		hurt_start = 64,
		hurt_end = 86,
		death_start = 88,
		death_end = 118,
	},
	drawtype = "front",
	water_damage = 0,
	lava_damage = 4,
	light_damage = 0,
	fall_damage = 0,
	view_range = 16,
	attack_type = "dogfight",
	passive = false,
	jump = true,
	walk_velocity = 2.5,
	run_velocity = 2.5,
	walk_chance = 0,
	jump_height = 5.2,
	jump_chance = 100,
	fear_height = 60,
	on_die = function(self, pos)
		local angle, posadd
		angle = math.random(0, math.pi*2)
		for i=1,4 do
			posadd = {x=math.cos(angle),y=0,z=math.sin(angle)}
			posadd = vector.normalize(posadd)
			local slime = minetest.add_entity(vector.add(pos, posadd), "mobs_mc:greenmedium")
			slime:setvelocity(vector.multiply(posadd, 1.5))
			slime:setyaw(angle)
			angle = angle + math.pi/2
		end
	end,
})

mobs:register_spawn("mobs_mc:greensmall", {"default:water_flowing", "group:cracky"}, 15, 0, 5000, 4, -12)
mobs:register_spawn("mobs_mc:greenmedium", {"default:water_flowing", "group:cracky"}, 15, 0, 5000, 4, -12)
mobs:register_spawn("mobs_mc:greenbig", {"default:water_flowing", "group:cracky"}, 15, 0, 5000, 4, -12)



mobs:register_mob("mobs_mc:lavasmall", {
	type = "monster",
	pathfinding = 1,
	group_attack = true,
	hp_min = 1,
	hp_max = 1,
	collisionbox = {-0.2505, -0.2505, -0.2505, 0.2505, 0.2505, 0.2505},
	visual_size = {x=0.51, y=0.51},
	textures = {
	{"lava_slime_top.png", "lava_slime_bottom.png", "lava_slime_front.png", "lava_slime_sides.png", "lava_slime_sides.png", "lava_slime_sides.png"}
	},
	-- TODO: Replace with mesh with animations
	visual = "cube",
	blood_texture ="lava_slime_blood.png",
	rotate = 270,
	makes_footstep_sound = true,
	sounds = {
		jump = "green_slime_jump",
		death = "green_slime_death",
		damage = "green_slime_damage",
		attack = "green_slime_attack",
	},
	walk_velocity = 1.02,
	run_velocity = 1.02,
	damage = 3,
	reach = 2.5,
	armor = 85,
	drops = {},
	animation = {
		speed_normal = 24,
		speed_run = 48,
		stand_start = 0,
		stand_end = 23,
		walk_start = 24,
		walk_end = 47,
		run_start = 48,
		run_end = 62,
		hurt_start = 64,
		hurt_end = 86,
		death_start = 88,
		death_end = 118,
	},
	drawtype = "front",
	water_damage = 0,
	lava_damage = 0,
	light_damage = 0,
	fall_damage = 0,
	view_range = 16,
	attack_type = "dogfight",
	passive = false,
	jump = true,
	jump_height = 4,
	walk_chance = 0,
	jump_chance = 80,
	fear_height = 100000,
})

mobs:register_mob("mobs_mc:lavamedium", {
	type = "monster",
	pathfinding = 1,
	group_attack = true,
	hp_min = 4,
	hp_max = 4,
	collisionbox = {-0.51, -0.51, -0.51, 0.51, 0.51, 0.51},
	visual_size = {x=1.01, y=1.01},
	textures = {
	{"lava_slime_top.png", "lava_slime_bottom.png", "lava_slime_front.png", "lava_slime_sides.png", "lava_slime_sides.png", "lava_slime_sides.png"}
	},
	-- TODO: Replace with mesh with animations
	visual = "cube",
	blood_texture ="lava_slime_blood.png",
	rotate = 270,
	makes_footstep_sound = true,
	sounds = {
		jump = "green_slime_jump",
		death = "green_slime_death",
		damage = "green_slime_damage",
		attack = "green_slime_attack",
	},
	walk_velocity = .8,
	run_velocity = 2.6,
	damage = 4,
	reach = 2.75,
	armor = 70,
	drops = {
		{name = "mobs_mc:magma_cream",
		chance = 4,
		min = 1,
		max = 1,},
	},
	animation = {
		speed_normal = 24,
		speed_run = 48,
		stand_start = 0,
		stand_end = 23,
		walk_start = 24,
		walk_end = 47,
		run_start = 48,
		run_end = 62,
		hurt_start = 64,
		hurt_end = 86,
		death_start = 88,
		death_end = 118,
	},
	drawtype = "front",
	water_damage = 0,
	lava_damage = 0,
	light_damage = 0,
	fall_damage = 0,
	view_range = 16,
	attack_type = "dogfight",
	passive = false,
	jump = true,
	jump_height = 4,
	walk_chance = 0,
	jump_chance = 98,
	fear_height = 100000,
	on_die = function(self, pos)
		local angle, posadd, dir
		angle = math.random(0, math.pi*2)
		for i=1,4 do
			dir = vector.normalize({x=math.cos(angle),y=0,z=math.sin(angle)})
			posadd = vector.multiply(dir, 0.6)
			local mob = minetest.add_entity(vector.add(pos, posadd), "mobs_mc:lavasmall")
			mob:setvelocity(dir)
			mob:setyaw(angle)
			angle = angle + math.pi/2
		end
	end
})



mobs:register_mob("mobs_mc:lavabig", {
	type = "monster",
	pathfinding = 1,
	group_attack = true,
	hp_min = 16,
	hp_max = 16,
	collisionbox = {-1.02, -1.02, -1.02, 1.02, 1.02, 1.02},
	visual_size = {x=2.04, y=2.04},
	textures = {
	{"lava_slime_top.png", "lava_slime_bottom.png", "lava_slime_front.png", "lava_slime_sides.png", "lava_slime_sides.png", "lava_slime_sides.png"}
	},
	-- TODO: Replace with mesh with animations
	visual = "cube",
	blood_texture ="lava_slime_blood.png",
	rotate = 270,
	makes_footstep_sound = true,
	sounds = {
		jump = "green_slime_jump",
		death = "green_slime_death",
		damage = "green_slime_damage",
		attack = "green_slime_attack",
	},
	walk_velocity = 4,
	run_velocity = 4,
	damage = 6,
	reach = 3,
	armor = 40,
	drops = {
		{name = "mobs_mc:magma_cream",
		chance = 4,
		min = 1,
		max = 1,},
	},
	animation = {
		speed_normal = 24,
		speed_run = 48,
		stand_start = 0,
		stand_end = 23,
		walk_start = 24,
		walk_end = 47,
		run_start = 48,
		run_end = 62,
		hurt_start = 64,
		hurt_end = 86,
		death_start = 88,
		death_end = 118,
	},
	drawtype = "front",
	water_damage = 0,
	lava_damage = 0,
	light_damage = 0,
	fall_damage = 0,
	view_range = 16,
	attack_type = "dogfight",
	passive = false,
	jump = true,
	jump_height = 8,
	walk_chance = 0,
	jump_chance = 100,
	fear_height = 100000,
	on_die = function(self, pos)
		local angle, posadd
		angle = math.random(0, math.pi*2)
		for i=1,3 do
			posadd = {x=math.cos(angle),y=0,z=math.sin(angle)}
			posadd = vector.normalize(posadd)
			local mob = minetest.add_entity(vector.add(pos, posadd), "mobs_mc:lavamedium")
			mob:setvelocity(vector.multiply(posadd, 1.5))
			mob:setyaw(angle)
			angle = angle + (math.pi*2) / 3
		end
	end
})

-- Crafting items
minetest.register_craftitem("mobs_mc:magma_cream", {
	description = "Magma Cream",
	_doc_items_longdesc = "Magma cream is a crafting component.",
	wield_image = "mcl_mobitems_magma_cream.png",
	inventory_image = "mcl_mobitems_magma_cream.png",
	groups = { brewitem = 1 },
	stack_max = 64,
})

mobs:register_spawn("mobs_mc:lavasmall", {"group:stone"}, 15, 0, 5000, 4, -1000)
mobs:register_spawn("mobs_mc:lavamedium", {"group:stone"}, 15, 0, 5500, 4, -1000)
mobs:register_spawn("mobs_mc:lavabig", {"group:stone"}, 15, 0, 6000, 4, -1000)

mobs:register_spawn("mobs_mc:lavasmall", {"mcl_nether:nether_brick"}, 15, 0, 1000, 4, -1000)
mobs:register_spawn("mobs_mc:lavamedium", {"mcl_nether:nether_brick"}, 15, 0, 1100, 4, -1000)
mobs:register_spawn("mobs_mc:lavabig", {"mcl_nether:nether_brick"}, 15, 0, 1200, 4, -1000)

-- compatibility
mobs:alias_mob("mobs:lavasmall", "mobs_mc:lavasmall")
mobs:alias_mob("mobs:lavabig", "mobs_mc:lavabig")
mobs:alias_mob("mobs:greensmall", "mobs_mc:greensmall")
mobs:alias_mob("mobs:greenmediuml", "mobs_mc:greenmedium")
mobs:alias_mob("mobs:greenbig", "mobs_mc:greenbig")

mobs:alias_mob("slimes:lavasmall", "mobs_mc:lavasmall")
mobs:alias_mob("slimes:lavabig", "mobs_mc:lavabig")
mobs:alias_mob("slimes:greensmall", "mobs_mc:greensmall")
mobs:alias_mob("slimes:greenmediuml", "mobs_mc:greenmedium")
mobs:alias_mob("slimes:greenbig", "mobs_mc:greenbig")


-- spawn eggs
mobs:register_egg("mobs_mc:lavabig", "Magma Cube", "magmacube_inv.png")
mobs:register_egg("mobs_mc:greenbig", "Slime", "slime_inv.png")


if minetest.setting_get("log_mods") then
	minetest.log("action", "MC Slimes loaded")
end
