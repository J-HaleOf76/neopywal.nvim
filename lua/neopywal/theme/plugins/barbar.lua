local M = {}

function M.get()
    local current_style = { "bold", "italic" }
    local fill_bg = O.transparent_background and C.background or U.darken(C.dim_bg, 4)
    local unselected_bg = O.transparent_background and C.none or C.dim_bg
    local selected_bg = O.transparent_background and C.none or C.background
    -- local alternate_bg = O.transparent_background and C.none or U.blend(C.background, C.foreground, 0.9)

    return {
        BufferScrollArrow = { bg = fill_bg, fg = C.color8, styles = current_style },
        BufferOffset = { link = "BufferScrollArrow" },

        BufferTabpageFill = { bg = fill_bg },
        BufferTabpages = { bg = selected_bg, fg = C.foreground, styles = current_style },
        BufferTabpagesSep = { link = "BufferTabpages" },

        BufferCurrent = { bg = selected_bg, fg = C.foreground, styles = current_style },
        BufferCurrentIndex = { bg = selected_bg, fg = C.foreground, styles = current_style },
        BufferCurrentNumber = { link = "BufferCurrentIndex" },
        -- BufferCurrentIcon = {},
        BufferCurrentBtn = { bg = selected_bg, fg = C.color1 },
        BufferCurrentMod = { bg = selected_bg, fg = C.warn },
        BufferCurrentModBtn = { link = "BufferCurrentMod" },
        BufferCurrentPin = { bg = selected_bg },
        BufferCurrentPinBtn = { bg = selected_bg, fg = C.color1 },
        BufferCurrentSign = { bg = selected_bg, fg = C.color4 },
        BufferCurrentSignRight = { link = "BufferCurrentSign" },
        BufferCurrentTarget = { bg = selected_bg, fg = C.color6, styles = { "bold", "italic" } },
        BufferCurrentADDED = { bg = selected_bg, fg = C.diff_added, styles = current_style },
        BufferCurrentCHANGED = { bg = selected_bg, fg = C.diff_changed, styles = current_style },
        BufferCurrentDELETED = { bg = selected_bg, fg = C.diff_removed, styles = current_style },
        BufferCurrentERROR = { bg = selected_bg, fg = C.error, styles = current_style },
        BufferCurrentWARN = { bg = selected_bg, fg = C.warn, styles = current_style },
        BufferCurrentHINT = { bg = selected_bg, fg = C.hint, styles = current_style },
        BufferCurrentINFO = { bg = selected_bg, fg = C.info, styles = current_style },

        BufferInactive = { bg = unselected_bg, fg = C.color8 },
        BufferInactiveIndex = { link = "BufferInactive" },
        BufferInactiveNumber = { link = "BufferInactiveIndex" },
        BufferInactiveIcon = { link = "BufferInactive" },
        BufferInactiveBtn = { link = "BufferInactive" },
        BufferInactiveMod = { link = "BufferInactive" },
        BufferInactiveModBtn = { link = "BufferInactiveMod" },
        BufferInactivePin = { link = "BufferInactive" },
        BufferInactivePinBtn = { link = "BufferInactive" },
        BufferInactiveSign = { bg = fill_bg, fg = fill_bg },
        BufferInactiveSignRight = { link = "BufferInactiveSign" },
        BufferInactiveTarget = { bg = unselected_bg, fg = C.color6, styles = { "bold", "italic" } },
        BufferInactiveADDED = { link = "BufferInactive" },
        BufferInactiveCHANGED = { link = "BufferInactive" },
        BufferInactiveDELETED = { link = "BufferInactive" },
        BufferInactiveERROR = { link = "BufferInactive" },
        BufferInactiveWARN = { link = "BufferInactive" },
        BufferInactiveHINT = { link = "BufferInactive" },
        BufferInactiveINFO = { link = "BufferInactive" },

        BufferVisible = { link = "BufferInactive" },
        BufferVisibleIndex = { link = "BufferVisible" },
        BufferVisibleNumber = { link = "BufferVisibleIndex" },
        BufferVisibleIcon = { link = "BufferVisible" },
        BufferVisibleBtn = { link = "BufferVisible" },
        BufferVisibleMod = { link = "BufferVisible" },
        BufferVisibleModBtn = { link = "BufferVisibleMod" },
        BufferVisiblePin = { link = "BufferVisible" },
        BufferVisiblePinBtn = { link = "BufferInactiveSign" },
        BufferVisibleSign = { link = "BufferInactiveSignRight" },
        BufferVisibleSignRight = { link = "BufferVisibleSign" },
        BufferVisibleTarget = { link = "BufferInactiveTarget" },
        BufferVisibleADDED = { link = "BufferVisible" },
        BufferVisibleCHANGED = { link = "BufferVisible" },
        BufferVisibleDELETED = { link = "BufferVisible" },
        BufferVisibleERROR = { link = "BufferVisible" },
        BufferVisibleWARN = { link = "BufferVisible" },
        BufferVisibleHINT = { link = "BufferVisible" },
        BufferVisibleINFO = { link = "BufferVisible" },

        -- BufferAlternate = { bg = alternate_bg, fg = C.foreground, styles = current_style },
        -- BufferAlternateIndex = { bg = alternate_bg, fg = C.foreground, styles = current_style },
        -- BufferAlternateNumber = { link = "BufferAlternateIndex" },
        -- -- BufferAlternateIcon = {},
        -- BufferAlternateBtn = { bg = alternate_bg, fg = C.color1 },
        -- BufferAlternateMod = { bg = alternate_bg, fg = C.warn },
        -- BufferAlternateModBtn = { link = "BufferAlternateMod" },
        -- BufferAlternatePin = { bg = alternate_bg },
        -- BufferAlternatePinBtn = { bg = alternate_bg, fg = C.color1 },
        -- BufferAlternateSign = { bg = selected_bg, fg = C.color4 },
        -- BufferAlternateSignRight = { link = "BufferAlternateSign" },
        -- BufferAlternateTarget = { bg = alternate_bg, fg = C.color6, styles = { "bold", "italic" } },
        -- BufferAlternateADDED = { bg = alternate_bg, fg = C.diff_added, styles = current_style },
        -- BufferAlternateCHANGED = { bg = alternate_bg, fg = C.diff_changed, styles = current_style },
        -- BufferAlternateDELETED = { bg = alternate_bg, fg = C.diff_removed, styles = current_style },
        -- BufferAlternateERROR = { bg = alternate_bg, fg = C.error, styles = current_style },
        -- BufferAlternateWARN = { bg = alternate_bg, fg = C.warn, styles = current_style },
        -- BufferAlternateHINT = { bg = alternate_bg, fg = C.hint, styles = current_style },
        -- BufferAlternateINFO = { bg = alternate_bg, fg = C.info, styles = current_style },
    }
end

return M
