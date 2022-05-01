import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;

var tcpCoin = <contenttweaker:tcpcoin>;

recipes.addShaped(<minecraft:iron_ingot> * 64,	[[tcpCoin, null, null], 
                                             [null, null, null], 
											 [null, null, null]]);
											 
											 
recipes.addShaped(<minecraft:gold_ingot> * 16,	[[null, tcpCoin, null], 
                                             [null, null, null], 
											 [null, null, null]]);
											 
recipes.addShaped(<minecraft:diamond>,		[[null, null, tcpCoin], 
                                             [null, null, null], 
											 [null, null, null]]);
											 
recipes.addShaped(<minecraft:pumpkin>,		[[tcpCoin, tcpCoin, null], 
                                             [tcpCoin, null, null], 
											 [null, null, null]]);