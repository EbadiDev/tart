module UI
  ( drawUI
  )
where

import Brick
import Lens.Micro.Platform

import Types
import UI.Main
import UI.CharacterSelect
import UI.PaletteEntrySelect

drawUI :: AppState -> [Widget Name]
drawUI s =
    case s^.mode of
        Main                 -> drawMainUI s
        FgPaletteEntrySelect -> drawPaletteEntrySelectUI s
        BgPaletteEntrySelect -> drawPaletteEntrySelectUI s
        CharacterSelect      -> drawCharacterSelectUI s
