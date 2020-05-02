import mods.appliedenergistics2.Inscriber;//Import ae2
import crafttweaker.oredict.IOreDictEntry;//Import Oredict

//============== VARIABLES =================
//appliedenergistics2 ----------------------
var calculationProcessor = <appliedenergistics2:material:23>;
var engineeringProcessor = <appliedenergistics2:material:24>;
var inscriberCalculationPress = <appliedenergistics2:material:13>;
var inscriberEngineeringPress = <appliedenergistics2:material:14>;
var inscriberLogicPress = <appliedenergistics2:material:15>;
var inscriberSiliconPress = <appliedenergistics2:material:19>;
var logicProcessor = <appliedenergistics2:material:22>;
var printedCalculationCircuit = <appliedenergistics2:material:16>;
var printedEngineeringCircuit = <appliedenergistics2:material:17>;
var printedLogicCircuit = <appliedenergistics2:material:18>;
var printedSilicon = <appliedenergistics2:material:20>;
var pureCertusQuartzCrystal = <appliedenergistics2:material:10>;

//minecraft --------------------------------
var gemDiamond = <ore:gemDiamond>;
var goldIngot = <minecraft:gold_ingot>;
var ironBlock = <minecraft:iron_block>;
var itemSilicon = <ore:itemSilicon>;
var redstone = <minecraft:redstone>;
//==========================================

//reinstall Printed Logic Ciruit Recipe

//========== ADVANCED INSCRIBER ===========
//remove any recipe before it is added
Inscriber.removeRecipe(inscriberCalculationPress);
Inscriber.removeRecipe(inscriberEngineeringPress);
Inscriber.removeRecipe(inscriberLogicPress);
Inscriber.removeRecipe(inscriberSiliconPress);
Inscriber.removeRecipe(printedCalculationCircuit);
Inscriber.removeRecipe(printedEngineeringCircuit);
Inscriber.removeRecipe(printedLogicCircuit);
Inscriber.removeRecipe(printedSilicon);
Inscriber.removeRecipe(logicProcessor);
Inscriber.removeRecipe(calculationProcessor);
Inscriber.removeRecipe(engineeringProcessor);

//IItemStack output, IItemStack input, boolean inscribe, @Optional IItemStack topInput, @Optional IItemStack bottomInput
Inscriber.addRecipe(inscriberCalculationPress, 
            ironBlock, true, inscriberCalculationPress);

Inscriber.addRecipe(inscriberEngineeringPress, 
            ironBlock, true, inscriberEngineeringPress);

Inscriber.addRecipe(inscriberLogicPress, 
            ironBlock, true, inscriberLogicPress);

Inscriber.addRecipe(inscriberSiliconPress, 
            ironBlock, true, inscriberSiliconPress);

Inscriber.addRecipe(printedCalculationCircuit, 
            inscriberCalculationPress, true, pureCertusQuartzCrystal);

Inscriber.addRecipe(printedEngineeringCircuit, 
            gemDiamond, true, inscriberEngineeringPress);
            
Inscriber.addRecipe(printedLogicCircuit, 
            goldIngot, true, inscriberLogicPress);

Inscriber.addRecipe(printedSilicon, 
            itemSilicon, true, inscriberSiliconPress);
             
Inscriber.addRecipe(logicProcessor, 
            redstone, false, printedLogicCircuit, printedSilicon);

Inscriber.addRecipe(calculationProcessor, 
            redstone, false, printedCalculationCircuit, printedSilicon);

Inscriber.addRecipe(engineeringProcessor, 
            redstone, false, printedEngineeringCircuit, printedSilicon);

//==========================================