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
var emeraldBlock = <ore:blockEmerald>;
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
//fix potential duplication exploit ---------
/*
recipes.remove(emerald);
recipes.addShapeless(emerald * 9, [emeraldBlock]);
recipes.addShaped(emeraldBlock, [[emerald, emerald, emerald], 
[emerald, emerald, emerald], 
[emerald, emerald, emerald]]);
*/
//fix intentional plank duplication ---------
recipes.removeShapeless(choppedLog);
recipes.addShapeless(choppedLog * 8, 
                                             [<minecraft:stone_axe:*>, log]);

//fix result of difficult to fix emerald exploit
recipes.removeShapeless(<minecraft:diamond> * 2, [<projecte:item.pe_philosophers_stone>, emerald]);

/*
//fix bugged turtle recipes -----------------
recipes.addShaped(<computercraft:turtle_advanced>,			[[<ore:ingotGold>, <ore:ingotGold>, <ore:ingotGold>], 
                                             [<ore:ingotGold>, <computercraft:computer:16384>, <ore:ingotGold>], 
											 [<ore:ingotGold>, <ore:chest>, <minecraft:gold_ingot>]]);

recipes.addShaped(<computercraft:turtle>,			[[<ore:ingotIron>, <ore:ingotIron>, <ore:ingotIron>], 
                                             [<ore:ingotIron>, <computercraft:computer>, <ore:ingotIron>], 
											 [<minecraft:iron_ingot>, <ore:chest>, <ore:ingotIron>]]);
*/
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