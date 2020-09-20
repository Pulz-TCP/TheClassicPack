import mods.buildcraft.AssemblyTable;
import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;
import mods.initialinventory.InvHandler;


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

//=============== AKASHIC ===================
akashicTome.addTooltip(format.aqua("This book contains all starting guidebooks by default"));
mods.jei.JEI.addDescription(akashicTome, "Only the starting books are contained, add more manually by crafting them together!");
mods.jei.JEI.addItem(akashicTome);
recipes.addShapeless(akashicTome, [<minecraft:cobblestone>]);
mods.initialinventory.InvHandler.addStartingItem(akashicTome);
//===========================================

//================================== PATCHES ======================================

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
//=================================================================================