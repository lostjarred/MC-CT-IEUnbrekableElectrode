import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

print("START: Reinforced Electrode ");
    /*
        //Example:
        mods.immersiveengineering.Blueprint.addRecipe(String category, IItemStack output, IIngredient[] inputs);

        //Using an existing Category String
        mods.immersiveengineering.Blueprint.addRecipe("components", <minecraft:diamond>, [<ore:logWood>, <minecraft:dirt>]);

        //Using a new Category String (This generates a new Blueprint item)
        mods.immersiveengineering.Blueprint.addRecipe("Banana Pancakes", <minecraft:diamond>, [<ore:logWood>, <minecraft:dirt>]);

    */
    
    //the electrode item
        val reinforced_electrode_item = <immersiveengineering:graphite_electrode>.withTag(
            {ench: [{lvl: 10 as short, id: 34 as short}],
            Unbreakable: 1 as byte, 
            RepairCost: 1, 
            display: {Name: "Reinforced Electrode"}}
            );
    
    //crafting 
        val blueprint_string = "electrode";
        mods.immersiveengineering.Blueprint.addRecipe(blueprint_string, reinforced_electrode_item, [
            <immersiveengineering:graphite_electrode>, <ore:plateConstantan>, <ore:plateConstantan>, <ore:gemDiamond>, <ore:gemDiamond>
            ]);
        
    //add item to jei
        /*
            //addItem(item);
            mods.jei.JEI.addItem(<minecraft:stone>.withTag({display:{Name: "Pickle",Lore:["What once was stone", "Is stone no more"]}}));
        */
        mods.jei.JEI.addItem(reinforced_electrode_item);
print("END: Reinforced Electrode ");