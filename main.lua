SMODS.Atlas {
    key = 'c_fool',
    px = G.ASSET_ATLAS['Tarot'].px,
    py = G.ASSET_ATLAS['Tarot'].py,
    path = 'fools_display.png',
}
SMODS.Shader {
    key = 'fools',
    path = 'fools.fs',
}
SMODS.DrawStep {
    key = 'FoolsDisplay',
    order = 101,
    func = function(card, _)
        if card.ability.name == "The Fool" then
            if G.GAME.last_tarot_planet ~= nil then
                card.children.center.atlas = G.ASSET_ATLAS[G.P_CENTERS[G.GAME.last_tarot_planet].atlas]
                card.children.center.sprite_pos = G.P_CENTERS[G.GAME.last_tarot_planet].pos
            end

            card.children.center:draw_shader('FoolsDisplay_fools')
        end
    end,
    conditions = { vortex = false, facing = 'front' },
}
