
# GS-Events

Simple event handler for RedM similar to "gameEventTriggered" used in FiveM

This will allow you to have a single resource that will trigger client side game events without needing a dedicated thread in each resource.

```lua
-- Example
AddEventHandler('gameEventTriggered', function(eventName, eventData)
    if eventName == 'EVENT_ENTITY_DAMAGED' then
        local entity        = eventData[1]   -- damaged entity id
        local fromEntity    = eventData[2]   -- object (or ped id) that caused damage to the entity
        local weapon        = eventData[3]   --weaponHash that damaged the entity
        local ammo          = eventData[4]   --ammo hash that damaged the entit
        local damage        = eventData[5]   --(float) damage amount
        local x             = eventData[7]   --(float) entity coord x
        local y             = eventData[8]   --(float) entity coord y
        local z             = eventData[9]   --(float) entity coord z

        --OTHER LOGIC
    end
end)
```

![example](https://i.gyazo.com/c09af4e7c9fb3c33c708b3c7fa77a23c.png)


- If theres anything that can be approved or fixed please make a PR
Note: I have commented out one events in group 0 becuase it triggers on every movement. Id much rather keep the the rsmon ~0.01 

You can find all of the known events and their discovered arguments here https://github.com/femga/rdr3_discoveries/blob/master/AI/EVENTS/README.md


## Credit
Gottfriedleibniz https://github.com/femga/rdr3_discoveries/blob/master/AI/EVENTS/dataview_by_Gottfriedleibniz.lua