import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;
import mods.modularmachinery.RecipeBuilder;
import mods.modularmachinery.RecipePrimer;

//quarrytierone==================================================================================================


var quaryTierOne = mods.modularmachinery.RecipeBuilder.newBuilder("quarryTeirOneRecipe", "quarrytierone", 1, 0);
quarryTierOne.addEnergyPerTickInput(320);
quarryTierOne.addItemInput(<ore:ingotIron>); //modifier
quarryTierOne.addItemOutput(<minecraft:gold_ingot>); //array of goodies
quarryTierOne.build();