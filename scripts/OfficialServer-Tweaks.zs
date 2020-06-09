import mods.buildcraft.AssemblyTable;
import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;

//definitions
var gemHelm = <projecte:item.pe_gem_armor_3>;
var rmHelm = <projecte:item.pe_rm_armor_3>;
var gemChest = <projecte:item.pe_gem_armor_2>;
var rmChest = <projecte:item.pe_rm_armor_2>;
var gemLegs = <projecte:item.pe_gem_armor_1>;
var rmLegs = <projecte:item.pe_rm_armor_1>;

var kleinStarOmega = <projecte:item.pe_klein_star:5>;
var soulStone = <projecte:item.pe_soul_stone>;
var bodyStone = <projecte:item.pe_body_stone>;
var darkMatter = <projecte:item.pe_matter>;


//removed for performance/balance
mods.botania.Apothecary.removeRecipe("kekimurus");
mods.botania.Apothecary.removeRecipe("spectrolus");


//make gem armour not require banned items
recipes.remove(gemHelm);
recipes.remove(gemChest);
recipes.remove(gemLegs);

recipes.addShapeless(gemHelm, [rmHelm, kleinStarOmega, soulStone, darkMatter, darkMatter, darkMatter]);
recipes.addShapeless(gemChest, [rmChest, kleinStarOmega, bodyStone, darkMatter, darkMatter, darkMatter]);
recipes.addShapeless(rmLegs, [rmLegs, kleinStarOmega, darkMatter, darkMatter, darkMatter, darkMatter, darkMatter, darkMatter]);