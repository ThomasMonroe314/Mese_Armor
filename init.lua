--mese

minetest.register_tool("mese_armor:helmet_mese", {
	description = "Mese Helmet",
	inventory_image = "mese_armor_inv_helmet_mese.png",
	groups = {armor_head=12, armor_heal=9, armor_use=50},
	wear = 0,
})
minetest.register_tool("mese_armor:chestplate_mese", {
	description = "Mese Chestplate",
	inventory_image = "mese_armor_inv_chestplate_mese.png",
	groups = {armor_torso=18, armor_heal=9, armor_use=50},
	wear = 0,
})
minetest.register_tool("mese_armor:leggings_mese", {
	description = "Mese Leggings",
	inventory_image = "mese_armor_inv_leggings_mese.png",
	groups = {armor_legs=18, armor_heal=9, armor_use=50},
	wear = 0,
})
minetest.register_tool("mese_armor:boots_mese", {
	description = "Mese Boots",
	inventory_image = "mese_armor_inv_boots_mese.png",
	groups = {armor_feet=12, armor_heal=9, armor_use=50},
	wear = 0,
})
minetest.register_tool("mese_armor:shield_mese", {
	description = "Mese Shield",
	inventory_image = "mese_armor_inv_shield_mese.png",
	groups = {armor_shield=13, armor_heal=9, armor_use=50},
	wear = 0,
})

--octu

minetest.register_tool("mese_armor:helmet_octu", {
	description = "Octu Helmet",
	inventory_image = "mese_armor_inv_helmet_octu.png",
	groups = {armor_head=18, armor_heal=25, armor_fire=2, armor_use=25},
	wear = 0,
})
minetest.register_tool("mese_armor:chestplate_octu", {
	description = "Octu Chestplate",
	inventory_image = "mese_armor_inv_chestplate_octu.png",
	groups = {armor_torso=20, armor_heal=25, armor_fire=2, armor_use=25},
	wear = 0,
})
minetest.register_tool("mese_armor:leggings_octu", {
	description = "Octu Leggings",
	inventory_image = "mese_armor_inv_leggings_octu.png",
	groups = {armor_legs=20, armor_heal=25, armor_fire=2, armor_use=25},
	wear = 0,
})
minetest.register_tool("mese_armor:boots_octu", {
	description = "Octu Boots",
	inventory_image = "mese_armor_inv_boots_octu.png",
	groups = {armor_feet=19, armor_heal=25, armor_fire=2, armor_use=25},
	wear = 0,
})
minetest.register_tool("mese_armor:shield_octu", {
	description = "Octu Shield",
	inventory_image = "mese_armor_inv_shield_octu.png",
	groups = {armor_shield=18, armor_heal=25, armor_fire=2, armor_use=25},
	wear = 0,
})

local craft_ingreds = {
	mese = "default:mese_crystal",
	octu = "octutool:mese",
}

for k, v in pairs(craft_ingreds) do
	minetest.register_craft({
		output = "mese_armor:helmet_"..k,
		recipe = {
			{v, v, v},
			{v, "", v},
			{"", "", ""},
		},
	})
	minetest.register_craft({
		output = "mese_armor:chestplate_"..k,
		recipe = {
			{v, "", v},
			{v, v, v},
			{v, v, v},
		},
	})
	minetest.register_craft({
		output = "mese_armor:leggings_"..k,
		recipe = {
			{v, v, v},
			{v, "", v},
			{v, "", v},
		},
	})
	minetest.register_craft({
		output = "mese_armor:boots_"..k,
		recipe = {
			{v, "", v},
			{v, "", v},
		},
	})
	minetest.register_craft({
		output = "mese_armor:shield_"..k,
		recipe = {
			{v, v, v},
			{v, v, v},
			{"", v, ""},
		},
	})
end
