config = {
    -- enables version checking (if this is enabled and there is no new version it won't display a message anyways)
    versionCheck = true,

    text = {
        -- The text to display on-screen for the nearest postal. 
        -- Formatted using Lua strings, http://www.lua.org/pil/20.html
        format = '',

        -- ScriptHook PLD Position
        --posX = 0.225,
        --posY = 0.963,

        -- vMenu PLD Position
        posX = 0,
        posY = 0
    },

    blip = {
        -- The text to display in chat when setting a new route. 
        -- Formatted using Lua strings, http://www.lua.org/pil/20.html
        blipText = 'Route naar postcode %s',

        -- The sprite ID to display, the list is available here:
        -- https://docs.fivem.net/docs/game-references/blips/#blips
        sprite = 38,

        -- The color ID to use (default is 3, light blue)
        -- https://docs.fivem.net/docs/game-references/blips/#blip-colors
        color = 57,

        -- When the player is this close (in meters) to the destination, 
        -- the blip will be removed.
        distToDelete = 100.0,

        -- The text to display in chat when a route is deleted
        deleteText = 'Route deleted',

        -- The text to display in chat when drawing a new route
        drawRouteText = 'Drawing a route to %s',

        -- The text to display when a postal is not found.
        notExistText = "That postal doesn't exist"
    },

    -- How often in milliseconds the postal code is updated on each client.
    -- I wouldn't recommend anything lower than 50ms for performance reasons
    updateDelay = nil,
}
