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
mobsoul
");

var tcpTab = VanillaFactory.createCreativeTab("tcp_content", <item:contenttweaker:tcpcoin>);
tcpTab.register();

var tcpCoin = VanillaFactory.createItem("tcpCoin");
tcpCoin.setMaxStackSize(64);
tcpCoin.creativeTab = tcpTab;
tcpCoin.register();

var mobsoul = VanillaFactory.createFluid("mobsoul", Color.fromHex("332218"));
mobsoul.fillSound = <soundevent:minecraft:item.bucket.empty_lava>;
mobsoul.emptySound = <soundevent:minecraft:item.bucket.fill_lava>;
mobsoul.viscosity = 1250;
mobsoul.temperature = 300;
mobsoul.density = 2000;
mobsoul.luminosity = 5;
mobsoul.register();

//The liquid isn't the bucket, so lets add the bucket specifically
// var mobSoulBucket = <forge:bucketfilled>.anyDamage();
// mobSoulBucket.creativeTab = tcpTab;

// var tcpTestBlock = VanillaFactory.createBlock("tcp_test_block", <blockmaterial:ice>);
// tcpTestBlock.setLightOpacity(3);
// tcpTestBlock.setLightValue(0);
// tcpTestBlock.setBlockHardness(5.0);
// tcpTestBlock.setBlockResistance(5.0);
// tcpTestBlock.setToolClass("pickaxe");
// tcpTestBlock.setToolLevel(0);
// tcpTestBlock.setBlockSoundType(<soundtype:snow>);
// tcpTestBlock.setSlipperiness(0.3);
// tcpTestBlock.creativeTab = tcpTab;
// tcpTestBlock.register();