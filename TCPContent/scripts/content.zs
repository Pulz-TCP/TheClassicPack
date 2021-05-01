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
import mods.contenttweaker.MaterialSystem;
import mods.contenttweaker.Part;

//Content added:
print("========== TCP CONTENT ADDED: ==========");
print("
tcpTab\n
tcpCoin\n
");

//ghost item to use as the actual coin hasn't been registered yet, otherwise registering it now would not allow it to be added to the tcpTab
var tcpCoinGhost = VanillaFactory.createItem("tcpCoinGhost");
tcpCoinGhost.setMaxStackSize(64);
tcpCoinGhost.register();
mods.jei.JEI.hide(<item:contenttweaker:tcpcoinghost>);//hide 'duplicate'

var tcpTab = VanillaFactory.createCreativeTab("tcp_content", <item:contenttweaker:tcpcoinghost>);
tcpTab.register();

var tcpCoin = VanillaFactory.createItem("tcpCoin");
tcpCoin.setMaxStackSize(64);
tcpCoin.creativeTab = tcpTab;
tcpCoin.register();
game.setLocalization("en_us", 
    "item.contenttweaker.tcpCoin.name",
    "TCP Coin");