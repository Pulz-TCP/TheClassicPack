#loader contenttweaker

// import mods.contenttweaker.IItemRightClick;
import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;

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

//ghost item to use as the actual coin hasn't been registered yet, otherwise registering it now would not allow it to be added to the tcpTab
var tcpCoinGhost = VanillaFactory.createItem("tcpCoinGhost");
tcpCoinGhost.setMaxStackSize(64);
tcpCoinGhost.register();
mods.jei.JEI.hide(<item:contenttweaker:tcpcoinghost>);//hide 'duplicate'

var tcpTab = VanillaFactory.createCreativeTab("tcp_content", <item:contenttweaker:tcpcoinghost>);
tcpTab.register();

//TCP COIN
var tcpCoin = VanillaFactory.createItem("tcpCoin");
tcpCoin.setMaxStackSize(64);
tcpCoin.creativeTab = tcpTab;
tcpCoin.register();
game.setLocalization("en_us", 
    "item.contenttweaker.tcpCoin.name",
    "TCP Coin");

//SOUL HAMMER
var soulHammer = VanillaFactory.createItem("soulHammer");
soulHammer.setMaxStackSize(1);
soulHammer.creativeTab = tcpTab;
soulHammer.register();
game.setLocalization("en_us", 
    "item.contenttweaker.soulHammer.name",
    "Soul Hammer");

//SOUL NUGGETS
var soulNugget = VanillaFactory.createItem("soulNugget");
soulNugget.setMaxStackSize(64);
soulNugget.creativeTab = tcpTab;
soulNugget.register();
game.setLocalization("en_us", 
    "item.contenttweaker.soulNugget.name",
    "Soul Nugget");

//SOUL INGOTS
var soulIngot = VanillaFactory.createItem("soulIngot");
soulIngot.setMaxStackSize(64);
soulIngot.creativeTab = tcpTab;
soulIngot.register();
game.setLocalization("en_us", 
    "item.contenttweaker.soulIngot.name",
    "Soul Ingot");

//CURSED SLUDGE
var cursedSludge = VanillaFactory.createFluid("cursedSludge", Color.fromHex("332218"));
cursedSludge.fillSound = <soundevent:minecraft:item.bucket.empty_lava>;
cursedSludge.emptySound = <soundevent:minecraft:item.bucket.fill_lava>;
cursedSludge.viscosity = 1250;
cursedSludge.temperature = 300;
cursedSludge.density = 2000;
cursedSludge.luminosity = 5;
cursedSludge.register();