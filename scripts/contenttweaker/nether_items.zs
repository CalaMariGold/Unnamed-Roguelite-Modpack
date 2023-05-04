#loader contenttweaker

import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Item;
import mods.contenttweaker.BlockMaterial;
import mods.contenttweaker.Block;
import mods.contenttweaker.AxisAlignedBB;
import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.block.IBlockDefinition;

var scrambled_magma_eggs = VanillaFactory.createItemFood("scrambled_magma_eggs", 8);
scrambled_magma_eggs.setSaturation(0.4);
scrambled_magma_eggs.register();

var deviled_egg_sandwich = VanillaFactory.createItemFood("deviled_egg_sandwich", 12);
deviled_egg_sandwich.setSaturation(0.6);
deviled_egg_sandwich.register();


val infernal_fortress_scepter = mods.contenttweaker.VanillaFactory.createItem("infernal_fortress_scepter");
infernal_fortress_scepter.maxStackSize = 1;
infernal_fortress_scepter.register();

val vitality_orb = mods.contenttweaker.VanillaFactory.createItem("vitality_orb");
vitality_orb.register();