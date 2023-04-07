#loader contenttweaker
import mods.contenttweaker.CreativeTab;
import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Item;


var tcpCoinIcon = VanillaFactory.createItem("tcpCoinIcon");
tcpCoinIcon.register();
val tcpTab = VanillaFactory.createCreativeTab("tcpcontent", <item:contenttweaker:tcpcoinicon>);
tcpTab.register();

var tcpCoin = VanillaFactory.createItem("tcpCoin");
tcpCoin.maxStackSize = 64;
tcpCoin.rarity = "rare";
tcpCoin.creativeTab = tcpTab;
tcpCoin.register();

