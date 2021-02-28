#loader contenttweaker

// import mods.contenttweaker.IItemRightClick;
import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;

import mods.contenttweaker.Block;
import mods.contenttweaker.Color;
import mods.contenttweaker.Commands;
import mods.contenttweaker.CreativeTab;
import mods.contenttweaker.Fluid;
import mods.contenttweaker.Item;
import mods.contenttweaker.ResourceLocation;
import mods.contenttweaker.SoundEvent;
import mods.contenttweaker.VanillaFactory;

//Content added:
print("========== TCP CONTENT ADDED: ==========");
print("
tcpTab\n
tcpCoin\n
");

var tcpTab = VanillaFactory.createCreativeTab("tcp_content", <item:contenttweaker:tcpcoin>);
tcpTab.register();

var tcpCoin = VanillaFactory.createItem("tcpCoin");
tcpCoin.setMaxStackSize(64);
tcpCoin.creativeTab = tcpTab;
tcpCoin.register();