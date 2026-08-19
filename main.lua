SMODS.Atlas {
    key = 'c_fool',
    px = G.ASSET_ATLAS['Tarot'].px,
    py = G.ASSET_ATLAS['Tarot'].py,
    path = 'fools_display.png',
}

SMODS.DrawStep {
    key = 'FoolsDisplay',
    order = 101,
    func = function(card, _)
        if card.ability.name == "The Fool" then
            card.children.center.atlas = G.ASSET_ATLAS["FoolsDisplay_c_fool"]
            if G.GAME.last_tarot_planet ~= nil then
                card.children.center.sprite_pos = G.P_CENTERS[G.GAME.last_tarot_planet].pos
            end
        end
    end,
    conditions = { vortex = false, facing = 'front' },
}
