import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.block.IBlockDefinition;
import mods.dropt.Dropt;
import mods.jei.JEI;
import crafttweaker.enchantments.IEnchantmentDefinition;
import crafttweaker.data.IData;


JEI.removeAndHide(<nethercraft:imp_helmet>);
JEI.removeAndHide(<nethercraft:imp_chestplate>);
JEI.removeAndHide(<nethercraft:imp_leggings>);
JEI.removeAndHide(<nethercraft:imp_boots>);

JEI.removeAndHide(<nethercraft:lava_paper>);
JEI.removeAndHide(<nethercraft:lava_book>);
JEI.removeAndHide(<nethercraft:dark_wheat_crops>);
JEI.removeAndHide(<nethercraft:dark_seeds>);
JEI.removeAndHide(<nethercraft:glowood_bookshelf>);

JEI.removeAndHide(<nethercraft:pyridium_block>);
JEI.removeAndHide(<nethercraft:neridium_block>);


recipes.remove(<nethercraft:devil_bread>);
furnace.remove(<nethercraft:heat_glass>);

recipes.remove(<minecraft:magma_cream>);
recipes.addShapeless("magma_cream", <minecraft:magma_cream>,[<minecraft:blaze_powder>, <nethercraft:slime_eggs>]);

recipes.remove(<minecraft:fire_charge>);
recipes.addShapeless("fire_charge", <minecraft:fire_charge>*3,[<minecraft:blaze_powder>, <minecraft:gunpowder>]);

recipes.addShapeless("gunpowder", <minecraft:gunpowder>*5,[<minecraft:tnt>]);

furnace.addRecipe(<contenttweaker:scrambled_magma_eggs>, <nethercraft:slime_eggs>, 0.5);
recipes.addShapeless("deviled_egg_sandwich", <contenttweaker:deviled_egg_sandwich>,[<contenttweaker:scrambled_magma_eggs>, <nethercraft:devil_bread>, <minecraft:magma_cream>]);

recipes.remove(<corpsecomplex:scroll>);
recipes.addShapeless("dreadstone_tablet", <corpsecomplex:scroll>,[<contenttweaker:dreadstone_fragment>, <contenttweaker:dreadstone_fragment>, <contenttweaker:dreadstone_fragment>,<contenttweaker:dreadstone_fragment>, <contenttweaker:dreadstone_fragment>, <contenttweaker:dreadstone_fragment>,<contenttweaker:dreadstone_fragment>, <contenttweaker:dreadstone_fragment>, <contenttweaker:dreadstone_fragment>]);


var green_glowshroom = <nethercraft:green_glowshroom>;
var purple_glowshroom = <nethercraft:purple_glowshroom>;


// Glow Stew Recipe
recipes.addShapeless("glowstew", <nethercraft:glow_stew>,[green_glowshroom, purple_glowshroom, <nethercraft:glowood_bowl>]);

recipes.remove(<minecraft:mushroom_stew>);
recipes.addShapeless("mushroom_stew_new", <minecraft:mushroom_stew>,[<ore:mushroomAny>,<ore:mushroomAny>, <minecraft:bowl>]);


// Slab
recipes.addShapedMirrored("glowood_slab", <minecraft:wooden_slab>*6,
[[<nethercraft:glowood_planks>,<nethercraft:glowood_planks>,<nethercraft:glowood_planks>],
[null,null,null],
[null,null,null]
]);

recipes.remove(<scalinghealth:healingitem:1>);
recipes.addShapeless("medkit", <scalinghealth:healingitem:1>, [<scalinghealth:healingitem>, <scalinghealth:healingitem>, <scalinghealth:healingitem>]);

recipes.remove(<scalinghealth:healingitem>);
recipes.addShaped("bandage", <scalinghealth:healingitem>,
[[null,null,null],
[<nethercraft:foulite_dust>,<nethercraft:foulite_dust>,<nethercraft:foulite_dust>],
[<ore:paper>,<ore:paper>,<ore:paper>]
]);


recipes.remove(<nethercraft:neridium_lighter>);
recipes.addShapeless("neridium lighter", <nethercraft:neridium_lighter>, [<minecraft:quartz>, <nethercraft:foulite_dust>]);

// Remove Glowood Sapling Drop
Dropt.list("no_glowood_sapling")

  .add(Dropt.rule()
    .matchBlocks(["nethercraft:glowood_leaves:*"])
    .matchDrops([<nethercraft:glowood_sapling>])
    .replaceStrategy("REPLACE_ITEMS")
    .addDrop(Dropt.drop())
  );

// Ghast Bones Drop
  Dropt.list("ghast_bones")
  .add(Dropt.rule()
      .matchBlocks(["minecraft:bone_block:*"])
      .addDrop(Dropt.drop()
          .selector(Dropt.weight(65)) // drop nothing 75% of the time
      )
      .addDrop(Dropt.drop()
          .selector(Dropt.weight(25))
          .items([<nethercraft:ghast_bones>])
      )
      .addDrop(Dropt.drop()
          .selector(Dropt.weight(10))
          .items([<minecraft:ghast_tear>])
      )
  );

  Dropt.list("ghast_bones_100")
  .add(Dropt.rule()
      .matchBlocks(["minecraft:bone_block:*"])
      .matchHarvester(Dropt.harvester()
          .type("PLAYER")
          .mainHand([
              <simpleores:tin_pickaxe:*>
          ])
      )
      .addDrop(Dropt.drop()
          .force()
          .selector(Dropt.weight(100))
          .items([<nethercraft:ghast_bones>], Dropt.range(2, 2))
      )
  );

  



val glowood_log as IItemStack = <nethercraft:glowood_log>;
val pyridium_ore as IItemStack = <nethercraft:pyridium_ore>;
val pyridium_block as IItemStack = <nethercraft:pyridium_block>;
val basalt as IItemStack = <quark:basalt>;
val basalt1 as IItemStack = <quark:basalt:1>;
val black_glazed_terracotta as IItemStack = <minecraft:black_glazed_terracotta>;
val biotite_block2 as IItemStack = <quark:biotite_block:1>;
val biotite_block as IItemStack = <quark:biotite_block>;
val soul_sand as IItemStack = <minecraft:soul_sand>;
val wither_skull as IItemStack = <minecraft:skull>;



glowood_log.hardness = 1;
glowood_log.asBlock().definition.resistance = 9999;
biotite_block2.asBlock().definition.resistance = 9999;
biotite_block.asBlock().definition.resistance = 9999;
black_glazed_terracotta.asBlock().definition.resistance = 9999;
basalt.asBlock().definition.resistance = 9999;
basalt1.asBlock().definition.resistance = 9999;
wither_skull.asBlock().definition.resistance = 9999;
soul_sand.asBlock().definition.resistance = 9999;
pyridium_ore.asBlock().definition.lightLevel = 1;
pyridium_block.asBlock().definition.lightLevel = 0.1;



// Arrow Recipe
recipes.remove(<minecraft:arrow>);
recipes.addShaped("newarrow", <minecraft:arrow>*8,
[[null,<ore:arrowIngredient>,null],
[null,<ore:stickWood>,null],
[null,<ore:feather>,null]
]);


// new neridium recipes
recipes.remove(<nethercraft:neridium_sword>);
recipes.addShaped("neridium_sword", <nethercraft:neridium_sword>,
[[null,<nethercraft:neridium_ingot>,null],
[null,<nethercraft:neridium_ingot>,null],
[null,<nethercraft:ghast_rod>,null]
]);

recipes.remove(<nethercraft:neridium_pickaxe>);
recipes.addShaped("neridium_pickaxe", <nethercraft:neridium_pickaxe>,
[[<nethercraft:neridium_ingot>,<nethercraft:neridium_ingot>,<nethercraft:neridium_ingot>],
[null,<nethercraft:ghast_rod>,null],
[null,<nethercraft:ghast_rod>,null]
]);

recipes.remove(<nethercraft:neridium_axe>);
recipes.addShapedMirrored("neridium_axe", <nethercraft:neridium_axe>,
[[<nethercraft:neridium_ingot>,<nethercraft:neridium_ingot>,null],
[<nethercraft:neridium_ingot>,<nethercraft:ghast_rod>,null],
[null,<nethercraft:ghast_rod>,null]
]);

recipes.remove(<nethercraft:neridium_shovel>);
recipes.addShaped("neridium_shovel", <nethercraft:neridium_shovel>,
[[null,<nethercraft:neridium_ingot>,null],
[null,<nethercraft:ghast_rod>,null],
[null,<nethercraft:ghast_rod>,null]
]);

recipes.remove(<nethercraft:neridium_bow>);
recipes.addShaped("quartz_bow", <nethercraft:neridium_bow>,
[[null,<minecraft:quartz>,<minecraft:string>],
[<nethercraft:lava_reeds_item>,null,<minecraft:string>],
[null,<minecraft:quartz>,<minecraft:string>]
]);



// new pyridium recipes
val pyridiumSwordEnchantments as IEnchantmentDefinition[] = [<enchantment:minecraft:fire_aspect>];
var pyridiumSwordEnchantmentMap as IData = {};
pyridiumSwordEnchantmentMap += pyridiumSwordEnchantments[0].makeEnchantment(1).makeTag();

val pyridiumBowEnchantments as IEnchantmentDefinition[] = [<enchantment:minecraft:flame>];
var pyridiumBowEnchantmentMap as IData = {};
pyridiumBowEnchantmentMap += pyridiumBowEnchantments[0].makeEnchantment(1).makeTag();


recipes.remove(<nethercraft:pyridium_pickaxe>);
recipes.addShaped("pyridium_pickaxe", <nethercraft:pyridium_pickaxe>,
[[<contenttweaker:wither_infernium>,<contenttweaker:wither_infernium>,<contenttweaker:wither_infernium>],
[null,<minecraft:blaze_rod>,null],
[null,<minecraft:blaze_rod>,null]
]);



recipes.remove(<nethercraft:pyridium_sword>);
recipes.addShaped("pyridium_sword", <nethercraft:pyridium_sword>.withTag(({"Quark:RuneColor": 14, "Quark:RuneAttached": 1 as byte} as IData) + pyridiumSwordEnchantmentMap),
[[null,<nethercraft:pyridium_ingot>,null],
[null,<nethercraft:pyridium_ingot>,null],
[null,<minecraft:blaze_rod>,null]
]);

recipes.remove(<nethercraft:pyridium_axe>);
recipes.addShapedMirrored("pyridium_axe", <nethercraft:pyridium_axe>,
[[<nethercraft:pyridium_ingot>,<nethercraft:pyridium_ingot>,<nethercraft:pyridium_ingot>],
[<nethercraft:pyridium_ingot>,<minecraft:blaze_rod>,<nethercraft:pyridium_ingot>],
[null,<minecraft:blaze_rod>,null]
]);

recipes.remove(<nethercraft:pyridium_shovel>);
recipes.addShaped("pyridium_shovel", <nethercraft:pyridium_shovel>,
[[null,<nethercraft:pyridium_ingot>,null],
[null,<minecraft:blaze_rod>,null],
[null,<minecraft:blaze_rod>,null]
]);

recipes.remove(<nethercraft:pyridium_bow>);
recipes.addShaped("pyridium_bow", <nethercraft:pyridium_bow>.withTag(({"Quark:RuneColor": 14, "Quark:RuneAttached": 1 as byte} as IData) + pyridiumBowEnchantmentMap),
[[null,<minecraft:blaze_rod>,<minecraft:string>],
[<nethercraft:pyridium_ingot>,null,<minecraft:string>],
[null,<minecraft:blaze_rod>,<minecraft:string>]
]);

recipes.addShaped("infernal_fortress_scepter", <contenttweaker:infernal_fortress_scepter>,
[[null,<nethercraft:pyridium_ingot>,<nethercraft:pyridium_ingot>],
[<nethercraft:ghast_bones>,<minecraft:blaze_rod>,<nethercraft:pyridium_ingot>],
[<minecraft:blaze_rod>,<nethercraft:ghast_bones>,null]
]);



recipes.addShaped("vitality_orb", <contenttweaker:vitality_orb>,
[[<nethercraft:foulite_dust>,<nethercraft:foulite_dust>,<nethercraft:foulite_dust>],
[<nethercraft:foulite_dust>,<nethercraft:neridium_ingot>,<nethercraft:foulite_dust>],
[<nethercraft:foulite_dust>,<nethercraft:foulite_dust>,<nethercraft:foulite_dust>]
]);

recipes.addShaped("heal_staff", <mysticstaffs:heal_staff>,
[[null,<minecraft:ghast_tear>,<contenttweaker:vitality_orb>],
[null,<nethercraft:glowood_stick>,<minecraft:ghast_tear>],
[<nethercraft:glowood_stick>,null,null]
]);