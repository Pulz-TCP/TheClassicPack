import mods.buildcraft.AssemblyTable;
import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;


//============== VARIABLES =================
//minecraft --------------------------------
var gunpowder = <minecraft:gunpowder>;
var redstoneBlock = <minecraft:redstone_block>;
var tnt = <minecraft:tnt>;

//weirding gadget ---------------------------
var weirdingGadget = <weirdinggadget:weirding_gadget>;

//ic2 ---------------------------------------
var dynamite = <ic2:dynamite>;
var dynamiteSticky = <ic2:dynamite_sticky>;
var industrialTnt = <ic2:te:1>;

//thaumcraft --------------------------------
var alumentum = <thaumcraft:alumentum>;
var causalityCollapser = <thaumcraft:causality_collapser>;
var nitor = <ore:nitor>;
//===========================================




//=========== RECIPES TO REMOVE =============
recipes.remove(weirdingGadget);
recipes.remove(dynamite);
recipes.remove(tnt);
recipes.remove(industrialTnt);
recipes.remove(dynamiteSticky);
//===========================================




//=============== THAUMCRAFT =================
//remove and re-add infusion so it doesnt need tnt
mods.thaumcraft.Infusion.removeRecipe(causalityCollapser);
mods.thaumcraft.Infusion.registerRecipe("causalitycollapserpatch", "RIFTCLOSER", causalityCollapser, 9, 
[<aspect:alienis>*50, <aspect:vitium>*50], 
gunpowder, [<thaumcraft:morphic_resonator>, redstoneBlock, 
alumentum, nitor, <thaumcraft:vis_resonator>, 
redstoneBlock, alumentum, nitor]);									 
//============================================







