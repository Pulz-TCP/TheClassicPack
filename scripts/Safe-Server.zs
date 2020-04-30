import mods.buildcraft.AssemblyTable;
import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;


//============== VARIABLES =================
//ic2 ---------------------------------------
var advancedAlloy = <ic2:crafting:3>;
var advancedCircuit = <ic2:crafting:1>;
var advancedMachineCasing = <ic2:resource:13>;
var coil = <ic2:crafting:5>;
var crystalMemory = <ic2:crystal_memory>;
var electricMotor = <ic2:crafting:6>;
var energyCrystal = <ic2:energy_crystal:26>;
var ironIngot = <ore:ingotIron>;
var patternStorage = <ic2:te:62>;
var reinforcedStone = <ic2:resource:11>;
var thermalCentrifuge = <ic2:te:52>;
//===========================================




//=========== RECIPES TO REMOVE =============
recipes.remove(thermalCentrifuge); //added SHAPED RECIPE to not require Mining Laser at all
recipes.remove(patternStorage); //added SHAPED RECIPE to not require Mining Laser at all
//===========================================




//============= SHAPED RECIPES ==============
//(output, [components]) --------------------    

//new recipe that doesn't use mining laser
recipes.addShaped(thermalCentrifuge,        [[coil, energyCrystal, coil], 
                                             [advancedAlloy, advancedMachineCasing, advancedCircuit], 
                                             [ironIngot, electricMotor, ironIngot]]);

//new recipe that doesn't use mining laser									 
recipes.addShaped(patternStorage,           [[reinforcedStone, reinforcedStone, reinforcedStone], 
                                             [crystalMemory, advancedMachineCasing, crystalMemory], 
                                             [energyCrystal, advancedCircuit, energyCrystal]]);											 
//============================================





//NEEDS PROPER FORMATTING/VARIABLES
//========== THAUMCRAFT INFUSION ===========
//(name, research required, output, instability, [required aspects], central item, 

//remove recipe ----------------------------
mods.thaumcraft.Infusion.removeRecipe(<thaumcraft:causality_collapser>);

//add adjusted infusion --------------------
mods.thaumcraft.Infusion.registerRecipe("causalitycollapserfix", "RIFTCLOSER", <thaumcraft:causality_collapser>, 9, 
[<aspect:alienis>*50, <aspect:vitium>*50], 
<minecraft:gunpowder>, 
[<thaumcraft:morphic_resonator>, <minecraft:redstone_block>, <thaumcraft:alumentum>, <ore:nitor>, <thaumcraft:vis_resonator>, <minecraft:redstone_block>, <thaumcraft:alumentum>, <ore:nitor>]);
//===========================================
