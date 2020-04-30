import mods.buildcraft.AssemblyTable;
import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;


//============== VARIABLES =================



//===========================================




//=========== RECIPES TO REMOVE =============
recipes.remove(<weirdinggadget:weirding_gadget>);
recipes.remove(<ic2:dynamite>);
recipes.remove(<minecraft:tnt>);
recipes.remove(<ic2:te:1>);
recipes.remove(<ic2:dynamite_sticky>);
recipes.remove(<ic2:dynamite>);

//===========================================




//=============== THAUMCRAFT =================
//remove and re-add infusion so it doesnt need tnt
mods.thaumcraft.Infusion.removeRecipe(<thaumcraft:causality_collapser>);
mods.thaumcraft.Infusion.registerRecipe("causalitycollapserfix", "RIFTCLOSER", <thaumcraft:causality_collapser>, 9, 
[<aspect:alienis>*50, <aspect:vitium>*50], 
<minecraft:gunpowder>, [<thaumcraft:morphic_resonator>, <minecraft:redstone_block>, 
<thaumcraft:alumentum>, <ore:nitor>, <thaumcraft:vis_resonator>, 
<minecraft:redstone_block>, <thaumcraft:alumentum>, <ore:nitor>]);									 
//============================================







