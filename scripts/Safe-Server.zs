import mods.buildcraft.AssemblyTable;
import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;


//============== VARIABLES =================
//ic2 ---------------------------------------
var dynamite = <ic2:dynamite>;
var dynamiteSticky = <ic2:dynamite_sticky>;
var industrialTnt = <ic2:te:1>;

//minecraft --------------------------------
var gunpowder = <minecraft:gunpowder>;
var redstoneBlock = <minecraft:redstone_block>;
var tnt = <minecraft:tnt>;

//ic2 ---------------------------------------
var advancedAlloy = <ic2:crafting:3>;
var advancedCircuit = <ic2:crafting:2>;
var advancedMachineCasing = <ic2:resource:13>;
var coil = <ic2:crafting:5>;
var crystalMemory = <ic2:crystal_memory>;
var electricMotor = <ic2:crafting:6>;
var energyCrystal = <ic2:energy_crystal:26>.anyDamage();
var ironIngot = <ore:ingotIron>;
var patternStorage = <ic2:te:62>;
var reinforcedStone = <ic2:resource:11>;
var thermalCentrifuge = <ic2:te:52>;

//thaumcraft --------------------------------
var alumentum = <thaumcraft:alumentum>;
var causalityCollapser = <thaumcraft:causality_collapser>;
var nitor = <ore:nitor>;

//weirding gadget ---------------------------
var weirdingGadget = <weirdinggadget:weirding_gadget>;
//===========================================




//=========== RECIPES TO REMOVE =============
recipes.remove(dynamite);
recipes.remove(dynamiteSticky);
recipes.remove(industrialTnt);
recipes.remove(tnt);
recipes.remove(weirdingGadget);
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




//============= SHAPED RECIPES ==============
//(output, [components]) --------------------    
recipes.remove(patternStorage);
recipes.remove(thermalCentrifuge);
//new recipe that doesn't use mining laser
recipes.addShaped(thermalCentrifuge,        [[coil, energyCrystal, coil], 
                                             [advancedAlloy, advancedMachineCasing, advancedCircuit], 
                                             [ironIngot, electricMotor, ironIngot]]);

//new recipe that doesn't use mining laser									 
recipes.addShaped(patternStorage,           [[reinforcedStone, reinforcedStone, reinforcedStone], 
                                             [crystalMemory, advancedMachineCasing, crystalMemory], 
                                             [energyCrystal, advancedCircuit, energyCrystal]]);											 
//============================================