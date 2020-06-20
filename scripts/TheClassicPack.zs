import mods.buildcraft.AssemblyTable;
import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;


//============== VARIABLES =================
//additionalpipes ---------------------------
var itemTeleportPipe = <additionalpipes:pipe_items_teleport>;

//advanced machines -------------------------
var thermalWasher = <advanced_machines:machines:7>;

//buildcraft --------------------------------
var diamondChipset = <buildcraftsilicon:redstone_chipset:4>;
var diamondTransportPipe = <buildcrafttransport:pipe_diamond_item>;
var quartzChipset = <buildcraftsilicon:redstone_chipset:3>;

//ic2 ---------------------------------------
var advancedMachineCasing = <ic2:resource:13>;
var oreWashingPlant = <ic2:te:56>;

//mrcrayfish furniture-----------------------
var choppedLog = <cfm:item_log>;

//minecraft ---------------------------------
var emerald = <minecraft:emerald>;
var emeraldBlock = <minecraft:emerald_block>;
var log = <ore:logWood>;

//other -------------------------------------
var sulfurDust = <ore:dustSulfur>;
//===========================================




//============= ASSEMBLY TABLE ==============
//(output, power required, [components])-----

//remove recipe -----------------------------
mods.buildcraft.AssemblyTable.removeByName("additionalpipes:pipe_items_teleport");

//fix itemTeleportPipe recipe----------------
mods.buildcraft.AssemblyTable.addRecipe(itemTeleportPipe * 8, 10000, [quartzChipset, diamondTransportPipe, diamondChipset]);
//===========================================


//=============== PATCHES ===================

//balance scannable recipe

recipes.remove(<scannable:scanner>);
recipes.addShaped(<scannable:scanner>,			[[<minecraft:iron_block>, null, <minecraft:iron_block>],
                                             [<minecraft:iron_bars>, <ic2:energy_crystal:26>.anyDamage(), <minecraft:iron_bars>],
                                             [<minecraft:gold_block>, <minecraft:redstone_block>, <minecraft:gold_block>]]);

//fix potential duplication exploit ---------

recipes.remove(emerald);
recipes.addShapeless(emerald *9, [emeraldBlock]);
recipes.addShapeless(emeraldBlock, [emerald *9]);

//fix intentional plank duplication ---------
recipes.removeShapeless(choppedLog);
recipes.addShapeless(choppedLog *8, [<minecraft:stone_axe:*>, log]);

//fix result of difficult to fix emerald exploit
recipes.removeShapeless(<minecraft:diamond> *2, [<projecte:item.pe_philosophers_stone>, emerald]);

//beneath portal recipe
recipes.addShaped(<beneath:teleporterbeneath>,			[[<minecraft:coal_ore>, <minecraft:iron_ore>, <minecraft:gold_ore>], 
                                             [<minecraft:obsidian>, <minecraft:diamond_pickaxe>, <minecraft:obsidian>], 
											 [<minecraft:redstone_ore>, <minecraft:lapis_ore>, <minecraft:diamond_ore>]]);

//fix crafty turtle recipes
recipes.remove(<computercraft:turtle_expanded>);
recipes.remove(<computercraft:turtle_advanced>);
recipes.addShapeless(<computercraft:turtle_expanded>.withTag({leftUpgrade: 2 as short}), [<computercraft:turtle>, <minecraft:crafting_table>]);
recipes.addShapeless(<computercraft:turtle_advanced>.withTag({leftUpgrade: 2 as short}), [<computercraft:turtle_advanced>, <minecraft:crafting_table>]);

//fix bugged turtle recipes -----------------
recipes.addShaped(<computercraft:turtle_advanced>,			[[<ore:ingotGold>, <ore:ingotGold>, <ore:ingotGold>], 
                                             [<ore:ingotGold>, <computercraft:computer:16384>, <ore:ingotGold>], 
											 [<ore:ingotGold>, <ore:chest>, <minecraft:gold_ingot>]]);

recipes.addShaped(<computercraft:turtle>,			[[<ore:ingotIron>, <ore:ingotIron>, <ore:ingotIron>], 
                                             [<ore:ingotIron>, <computercraft:computer>, <ore:ingotIron>], 
											 [<minecraft:iron_ingot>, <ore:chest>, <ore:ingotIron>]]);

recipes.addShaped(thermalWasher,			[[sulfurDust, sulfurDust, sulfurDust], 
                                             [sulfurDust, oreWashingPlant, sulfurDust], 
											 [sulfurDust, advancedMachineCasing, sulfurDust]]);
											 
recipes.addShaped(<energyconverters:energy_producer_mj>,			[[<ore:materialStoneTool>, <ore:gearIron>, <ore:materialStoneTool>], 
                                             [<buildcraftcore:engine:1>, <buildcrafttransport:pipe_wood_item>, <ore:ingotGold>], 
											 [<minecraft:stone>, <thermalfoundation:material:24>, <ore:materialStoneTool>]]);
											 
recipes.addShaped(<cfm:wreath>,			[[<ore:treeLeaves>, <ore:dustGlowstone>, <ore:treeLeaves>], 
                                             [<ore:dustGlowstone>, null, <minecraft:glowstone_dust>], 
                                             [<ore:treeLeaves>, <minecraft:glowstone_dust>, <ore:treeLeaves>]]);
											 
recipes.addShaped(<vending:vendingstorageattachment>,			[[<ore:blockIron>, <ore:ingotIron>, <minecraft:iron_block>], 
                                             [<ore:ingotIron>, <vending:vendingmachineadvanced>, <ore:ingotIron>], 
											 [<minecraft:iron_block>, <ore:ingotIron>, <ore:blockIron>]]);
											 
recipes.addShaped(<vending:vendingstorageattachment>,			[[<ore:blockIron>, <ore:ingotIron>, <ore:blockIron>], 
                                             [<minecraft:iron_ingot>, <vending:vendingmachine:*>, <ore:ingotIron>], 
											 [<minecraft:iron_block>, <minecraft:iron_ingot>, <ore:blockIron>]]);
											 
recipes.addShaped(<thermalfoundation:storage:3>,			[[<ore:ingotLead>, <ore:ingotLead>, <thermalfoundation:material:131>], 
                                             [<ore:ingotLead>, <thermalfoundation:material:131>, <thermalfoundation:material:131>], 
											 [<thermalfoundation:material:131>, <thermalfoundation:material:131>, <thermalfoundation:material:131>]]);
//===========================================