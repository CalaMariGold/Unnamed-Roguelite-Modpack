import crafttweaker.game.IGame;
import crafttweaker.data.IData;
import crafttweaker.item.IItemStack;
import mods.jei.JEI;

<enderskills:token>.displayName = "§cTrace of Death";
<enderskills:token>.addTooltip("Right-click to break and add to your Souls");

<quark:elder_prismarine:2>.displayName = "Deep Stone";

<contenttweaker:scrambled_slime_eggs>.displayName = "Scrambled Slime Eggs";

<contenttweaker:deviled_egg_sandwich>.displayName = "§cDeviled Egg Sandwich";
<nethercraft:slime_eggs>.addTooltip("Can be thrown or used to make a delicious meal!");

<nethercraft:devil_bread>.addTooltip("Goes really well with Slime Eggs!");

<enderskills:book>.displayName = "§cSkill Book";
<enderskills:book>.addTooltip("Press R on this item to learn about skills");
<enderskills:book>.addTooltip("Does not drop on death");
JEI.addDescription(<enderskills:book>,"There are 3 main classes you can delve into and combine: Defense, Mobility, and Offense. Each of these classes have multiple subclasses (use the arrows on the bottom corners). Press SHIFT + [number] to use an ability. Unlocking most skills cost XP and Souls. You can obtain Souls by breaking Traces of Death, which are dropped by mobs. Soul prices increase as you spend, and there is a soft-cap of how many Souls you can have (9), meaning that you can't unlock everything, so spend wisely. You can always start a new world to try a new build!");


<quark:soul_compass>.addTooltip("Does not drop on death");
