
import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;

import loottweaker.LootTweaker;
import loottweaker.vanilla.loot.LootTable;
import loottweaker.vanilla.loot.LootPool;

import mods.buildcraft.AssemblyTable;
import mods.GalacticraftTweaker;
import mods.initialinventory.InvHandler;
import mods.tconstruct.Melting;
import mods.thaumcraft.Crucible;
import mods.mekanism.sawmill;

//================================= VARIABLES ====================================
//additionalpipes ---------------------------
var itemTeleportPipe = <additionalpipes:pipe_items_teleport>;

//advanced machines -------------------------
var thermalWasher = <advanced_machines:machines:7>;

//buildcraft --------------------------------
var diamondChipset = <buildcraftsilicon:redstone_chipset:4>;
var diamondTransportPipe = <buildcrafttransport:pipe_diamond_item>;
var quartzChipset = <buildcraftsilicon:redstone_chipset:3>;

//ic2 ---------------------------------------
var oreWashingPlant = <ic2:te:56>;
var advancedAlloy = <ic2:crafting:3>;
var advancedCircuit = <ic2:crafting:2>;
var advancedMachineCasing = <ic2:resource:13>;
var coil = <ic2:crafting:5>;
var crystalMemory = <ic2:crystal_memory>;
var electricMotor = <ic2:crafting:6>;
var energyCrystal = <ic2:energy_crystal:26>.anyDamage();
var ironIngot = <ore:ingotIron>;
var miningLaser = <ic2:mining_laser:26>.anyDamage();
var patternStorage = <ic2:te:62>;
var reinforcedStone = <ic2:resource:11>;
var thermalCentrifuge = <ic2:te:52>;
var ic2WoodenStorage = <ic2:te:111>;

//minecraft --------------------------------
var gunpowder = <minecraft:gunpowder>;
var redstoneBlock = <minecraft:redstone_block>;
var tnt = <minecraft:tnt>;
var logWood = <minecraft:log>;	
var planks = <minecraft:planks>;
var redWool = <minecraft:wool:14>;
var anyStick = <ore:stickWood>;

//mrcrayfish furniture-----------------------
var choppedLog = <cfm:item_log>;

//minecraft ---------------------------------
var emerald = <minecraft:emerald>;
var emeraldBlock = <minecraft:emerald_block>;
var log = <ore:logWood>;

//thaumcraft --------------------------------
var alumentum = <thaumcraft:alumentum>;
var causalityCollapser = <thaumcraft:causality_collapser>;
var nitor = <ore:nitor>;
var ancientStone = <thaumcraft:stone_ancient>;
var arcaneStone = <thaumcraft:stone_arcane>;

//marble ------------------------------------
var quarkMarble = <quark:marble>;
var quarkMarbleBrick = <quark:world_stone_bricks:4>;
var quarkMarblePolished = <quark:marble:1>;

var projectredMarble = <projectred-exploration:stone>;
var projectredMarbleBrick = <projectred-exploration:stone:1>;

//galacticraft + planets --------------------
var nuclearBomb = <extraplanets:nuclear_bomb>;
var fireBomb = <extraplanets:fire_bomb>;
var boosterT8 = <extraplanets:tier8_items:1>;
var heavyDutyPlateT7 = <extraplanets:tier7_items:3>;
var heavyDutyPlateT8 = <extraplanets:tier8_items:3>;
var zincIngot = <railcraft:ingot:8>;
var compressedZinc = <extraplanets:tier8_items:4>;
var filledFuelCanister = <galacticraftcore:fuel_canister_partial:1>;
var airVent = <galacticraftcore:air_vent>;
var blockOfTungsten = <extraplanets:pluto:7>;
var rocketlaunchpadT3 = <extraplanets:advanced_launch_pad:1>;
var zincSword = <extraplanets:zinc_sword>;
var zincShovel = <extraplanets:zinc_shovel>;
var zincPickaxe = <extraplanets:zinc_pickaxe>;

//other -------------------------------------
var sulfurDust = <ore:dustSulfur>;

var akashicTome = <akashictome:tome>.withTag({
    "akashictome:data": {
        tconstruct: {
            ForgeCaps: {"customnpcs:itemscripteddata": {}}, 
            id: "tconstruct:book", 
            Count: 1 as byte, 
            tag: {"akashictome:definedMod": "tconstruct"}, 
            Damage: 0 as short}, 

        conarm: {
            ForgeCaps: {"customnpcs:itemscripteddata": {}}, 
            id: "conarm:book", 
            Count: 1 as byte, 
            tag: {"akashictome:definedMod": "conarm"}, 
            Damage: 0 as short}, 

        opencomputers: {
            ForgeCaps: {"customnpcs:itemscripteddata": {}}, 
            id: "opencomputers:tool", 
            Count: 1 as byte, 
            tag: {"akashictome:definedMod": "opencomputers"}, 
            Damage: 4 as short}, 

        forestry: {
            ForgeCaps: {"customnpcs:itemscripteddata": {}}, 
            id: "forestry:book_forester", 
            Count: 1 as byte, 
            tag: {"akashictome:definedMod": "forestry"}, 
            Damage: 0 as short}}
            }
            );
//=================================================================================


//======== LOOT TWEAKS - Credit to Jon from 1.12.2 pack, genius solution ==========
//Stolen parts of Jon's LootTweaker script as we've been having a problem with chest loot too.

// Change Mineshaft loot due to Railcraft, IC2 & more (overflow is still a problem due to Railcraft bug)
val mineshaft = LootTweaker.getTable("minecraft:chests/abandoned_mineshaft");

# Remove IC2 mineshaft loot altogether as it is mostly duplicates
mineshaft.removePool("ic2");

val mineshaftPoolMain = mineshaft.getPool("main");
val mineshaftPool1 = mineshaft.getPool("pool1");
val mineshaftPool2 = mineshaft.getPool("pool2");
val mineshaftPoolForestryFactoryItems = mineshaft.getPool("forestry_factory_items");
val mineshaftPoolForestryStorageItems = mineshaft.getPool("forestry_storage_items");
val mineshaftPoolForestryApicultureBees = mineshaft.getPool("forestry_apiculture_bees");
val mineshaftPoolRailcraftResources = mineshaft.getPool("railcraft_resources");
val mineshaftPoolRailcraftCarts = mineshaft.getPool("railcraft_carts");

# Reduce mineshaft loot pool rolls
mineshaftPool1.setRolls(1, 2);
mineshaftPool2.setRolls(1, 2);
mineshaftPoolRailcraftResources.setRolls(0, 1);
mineshaftPoolRailcraftCarts.setRolls(1, 1);

# Modify Railcraft mineshaft loot
mineshaftPoolRailcraftResources.removeEntry("minecraft:coal");
mineshaftPoolRailcraftResources.removeEntry("railcraft:ingot");
mineshaftPoolRailcraftResources.removeEntry("railcraft:plate");

# Remove empty mineshaft loots. This real estate is worth too much
mineshaftPoolMain.removeEntry("empty");
mineshaftPoolForestryFactoryItems.removeEntry("empty");
mineshaftPoolForestryStorageItems.removeEntry("empty");
mineshaftPoolForestryApicultureBees.removeEntry("empty");

// Remove more IC2 loot as it is mostly duplicates
LootTweaker.getTable("minecraft:chests/simple_dungeon").removePool("ic2");
LootTweaker.getTable("minecraft:chests/end_city_treasure").removePool("ic2");
LootTweaker.getTable("minecraft:chests/igloo_chest").removePool("ic2");
LootTweaker.getTable("minecraft:chests/nether_bridge").removePool("ic2");
LootTweaker.getTable("minecraft:chests/stronghold_corridor").removePool("ic2");
LootTweaker.getTable("minecraft:chests/stronghold_crossing").removePool("ic2");

//=================================================================================



//=============== AKASHIC ===================
akashicTome.addTooltip(format.aqua("This book contains all starting guidebooks by default"));
mods.jei.JEI.addDescription(akashicTome, "Only the starting books are contained, add more manually by crafting them together!");
mods.jei.JEI.addItem(akashicTome);
recipes.addShapeless(akashicTome, [<minecraft:book>, <minecraft:book>]);
mods.initialinventory.InvHandler.addStartingItem(akashicTome);

//============= ASSEMBLY TABLE ==============
//(output, power required, [components])-----

//remove recipe -----------------------------
mods.buildcraft.AssemblyTable.removeByName("additionalpipes:pipe_items_teleport");

//fix itemTeleportPipe recipe----------------
mods.buildcraft.AssemblyTable.addRecipe(itemTeleportPipe * 8, 10000, [quartzChipset, diamondTransportPipe, diamondChipset]);
//===========================================


//tinkersdefence/compendium stone bucket recipe defaults to oredict for stone inc cobble, unregister recipe and set to cobblestone
recipes.remove(<tcomplement:materials>);
recipes.addShaped(<tcomplement:materials>,	[[null, null, null],
                                             [<minecraft:cobblestone>, null, <minecraft:cobblestone>],
                                             [null, <minecraft:cobblestone>, null]]);


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
											 
//convert marble
recipes.addShapeless(quarkMarble,[projectredMarble]);
recipes.addShapeless(projectredMarble,[quarkMarble]);

recipes.addShapeless(quarkMarbleBrick,[projectredMarbleBrick]);
recipes.addShapeless(projectredMarbleBrick,[quarkMarbleBrick]);

//fix polishedMarble conflicts
recipes.remove(quarkMarblePolished);
recipes.addShapeless(quarkMarblePolished,[quarkMarble *4]);

//Crayfish crate + IC2 storage box conflict
recipes.remove(ic2WoodenStorage);											 
recipes.addShaped(ic2WoodenStorage,			[[logWood, planks, logWood], 
                                             [planks, planks, planks], 
											 [logWood, planks, logWood]]);

//=============== IC2 =================
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

//=============== THAUMCRAFT =================
//remove and re-add infusion so it doesnt need tnt
mods.thaumcraft.Infusion.removeRecipe(causalityCollapser);
mods.thaumcraft.Infusion.registerRecipe("causalitycollapserpatch", "RIFTCLOSER", causalityCollapser, 9, 
[<aspect:alienis>*50, <aspect:vitium>*50], 
gunpowder, [<thaumcraft:morphic_resonator>, redstoneBlock, 
alumentum, nitor, <thaumcraft:vis_resonator>, 
redstoneBlock, alumentum, nitor]);									 

//ancient stone
mods.thaumcraft.Crucible.registerRecipe("ancientStoneCrucible", "INFUSIONANCIENT", ancientStone, arcaneStone, [<aspect:terra>*5, <aspect:alienis>*5]);

//=============== TINKERS =================
//remove incorrect melting recipe
mods.tconstruct.Melting.removeRecipe(<liquid:steel>, <ic2:pipe:1>.withTag({size: 0 as byte, type: 1 as byte}));
mods.tconstruct.Melting.removeRecipe(<liquid:steel>, <ic2:pipe:1>.withTag({size: 1 as byte, type: 1 as byte}));
mods.tconstruct.Melting.removeRecipe(<liquid:steel>, <ic2:pipe:1>.withTag({size: 2 as byte, type: 1 as byte}));
mods.tconstruct.Melting.removeRecipe(<liquid:steel>, <ic2:pipe:1>.withTag({size: 3 as byte, type: 1 as byte}));

//=============== EXTRA PLANETS =================
recipes.remove(nuclearBomb);
recipes.remove(fireBomb);

//================ GALACTICRAFT =================
//remove and then replace the compressor recipe for Compressed Zinc
mods.GalacticraftTweaker.removeCompressorRecipe(compressedZinc);
mods.GalacticraftTweaker.addCompressorShapelessRecipe(compressedZinc, zincIngot, zincIngot);

//remove and then replace the compressor recipe for Tier 8 Heavy Duty Plate 
mods.GalacticraftTweaker.removeCompressorRecipe(heavyDutyPlateT8);
mods.GalacticraftTweaker.addCompressorShapelessRecipe(heavyDutyPlateT8, heavyDutyPlateT7, zincIngot, zincIngot, zincIngot, compressedZinc, compressedZinc);

//remove and then replace recipe for Tier 8 Booster
recipes.remove(boosterT8);
recipes.addShaped(boosterT8,	[[zincIngot, redWool, zincIngot],
                                [zincIngot, filledFuelCanister, zincIngot],
                                [heavyDutyPlateT8, airVent, heavyDutyPlateT8]]);
								
								
//remove and then replace recipe for Tier 3 rocket launch pad
recipes.remove(rocketlaunchpadT3);
recipes.addShaped(rocketlaunchpadT3 * 5,	[[null, null, null],
                                [blockOfTungsten, blockOfTungsten, blockOfTungsten],
                                [zincIngot, zincIngot, zincIngot]]);
								
//remove and then replace recipes for zinc items
//sword
recipes.remove(zincSword);
recipes.addShaped(zincSword,		[[null, zincIngot, null],
									[null, zincIngot, null],
									[null, anyStick, null]]);

//shovel								
recipes.remove(zincShovel);
recipes.addShaped(zincShovel,	[[null, zincIngot, null],
									[null, anyStick, null],
									[null, anyStick, null]]);


//pickaxe								
recipes.remove(zincPickaxe);
recipes.addShaped(zincPickaxe,	[[zincIngot, zincIngot, zincIngot],
									[null, anyStick, null],
									[null, anyStick, null]]);
//================= MEKANISM ====================
mods.mekanism.sawmill.removeRecipe(<minecraft:torch> * 4, <minecraft:stick>, <minecraft:coal>);