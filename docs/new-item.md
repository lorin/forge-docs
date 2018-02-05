# Creating a new item

[Items: official docs](http://mcforge.readthedocs.io/en/latest/items/items/)

## Source code

You need to create an event handler class to register new items. 

Because it uses Java annotations, you don't need to explicitly register
this class, and the name of the class and the method don't matter, as long as
the right annotations are used.

Here's an example:

```java
package org.lorinhochstein.simplemod;

import net.minecraft.creativetab.CreativeTabs;
import net.minecraft.item.Item;
import net.minecraftforge.event.RegistryEvent;
import net.minecraftforge.fml.common.Mod;
import net.minecraftforge.fml.common.eventhandler.SubscribeEvent;

import java.util.logging.Logger;


@Mod.EventBusSubscriber
public class EventHandler {
    static final Logger logger = Logger.getLogger(EventHandler.class.getName());

    @SubscribeEvent
    public static void registerItems(RegistryEvent.Register<Item> event) {
        logger.info("registerItems");
        event.getRegistry().register(getLemon());
    }

    static Item getLemon() {
        return new Item()
                .setCreativeTab(CreativeTabs.FOOD)
                .setRegistryName("lemon")
                .setUnlocalizedName("lemon");
    }
}
```

## Name in inventory

Here's how you set the name in the inventory (note that `item.<label>.name`,
the `<label>` corresponds to the argument passed to `setUnlocalizedName`:

```
$ cat src/main/resources/assets/simplemod/lang/en_us.lang
item.lemon.name=Lemon
```

## JSON file

Minecraft will throw an exception if this JSON file is not present. I haven't
been able to find docs yet on what goes in it, so I just put an empty json
object:

```
$ cat  src/main/resources/assets/simplemod/models/item/lemon.json
{
}
```
