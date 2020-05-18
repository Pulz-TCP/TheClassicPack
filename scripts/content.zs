#loader contenttweaker

import mods.contenttweaker.Block;
import mods.contenttweaker.Commands;
import mods.contenttweaker.CreativeTab;
import mods.contenttweaker.IItemRightClick;
import mods.contenttweaker.Item;
import mods.contenttweaker.VanillaFactory;

print("Creating TCP Content Tab");
val tcpTab = VanillaFactory.createCreativeTab("TCP Coin", <contenttweaker:tcpCoin>);
tcpTab.register();

print("Registering tcpCoin");
var tcpCoin = VanillaFactory.createItem("tcpCoin");
tcpCoin.setMaxStackSize(64);
tcpCoin.creativeTab = tcpTab;
tcpCoin.itemRightClick = function(stack, world, player, hand){
    Commands.call("message @p A shiny TCP Coin!", player, world)
};
tcpCoin.register();
print("registered!");


// var antiIceBlock = VanillaFactory.createBlock("anti_ice", <blockmaterial:ice>);
// antiIceBlock.setLightOpacity(3);
// antiIceBlock.setLightValue(0);
// antiIceBlock.setBlockHardness(5.0);
// antiIceBlock.setBlockResistance(5.0);
// antiIceBlock.setToolClass("pickaxe");
// antiIceBlock.setToolLevel(0);
// antiIceBlock.setBlockSoundType(<soundtype:snow>);
// antiIceBlock.setSlipperiness(0.3);
// antiIceBlock.register();