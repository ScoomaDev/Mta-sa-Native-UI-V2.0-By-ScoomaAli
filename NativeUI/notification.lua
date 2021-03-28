local serverButton = ""
local ServerText = ""

local _lang = false

function drawNotification(button, text,lang)
    if not type(button) == "string" or not type(text) == "string" then  return outputDebugString("args type got not string",2) end
      --  if not button or not string.len(button) <= 4 then return outputDebugString("Button Len > 4",2) end
       -- if not text or not string.len(text) < 27 then return outputDebugString("Text Len > 27",2) end
        serverButton = button
        ServerText = text
    playSound("elements/hitm.wav")
    _lang = tostring(lang) or false 
        addEventHandler("onClientRender", root, show)

end




function removeNotification ()
    removeEventHandler("onClientRender", root, show)
end



function show()
   local screenW, screenH = guiGetScreenSize()
     
    dxDrawLine((screenW * 0.0081) - 1, (screenH * 0.1055) - 1, (screenW * 0.0081) - 1, screenH * 0.1432, tocolor(0, 0, 0, 255), 1, true)
    dxDrawLine(screenW * 0.1962, (screenH * 0.1055) - 1, (screenW * 0.0081) - 1, (screenH * 0.1055) - 1, tocolor(0, 0, 0, 255), 1, true)
    dxDrawLine((screenW * 0.0081) - 1, screenH * 0.1432, screenW * 0.1962, screenH * 0.1432, tocolor(0, 0, 0, 255), 1, true)
    dxDrawLine(screenW * 0.1962, screenH * 0.1432, screenW * 0.1962, (screenH * 0.1055) - 1, tocolor(0, 0, 0, 255), 1, true)
    dxDrawRectangle(screenW * 0.0081, screenH * 0.1055, screenW * 0.1881, screenH * 0.0378, tocolor(0, 0, 0, 233), true)
    if _lang == "fr" or not _lang then
        dxDrawText("Appuyer sur ", screenW * 0.0110, screenH * 0.1146, screenW * 0.0827, screenH * 0.1510, tocolor(255, 255, 255, 255), 1.00, "default-bold", "left", "top", false, false, true, false, false)
    elseif _lang == "eng" then
        dxDrawText("     Prees ", screenW * 0.0110, screenH * 0.1146, screenW * 0.0827, screenH * 0.1510, tocolor(255, 255, 255, 255), 1.00, "default-bold", "left", "top", false, false, true, false, false)
    elseif _lang == "ar" then 
        dxDrawText("     brk 3la ", screenW * 0.0110, screenH * 0.1146, screenW * 0.0827, screenH * 0.1510, tocolor(255, 255, 255, 255), 1.00, "default-bold", "left", "top", false, false, true, false, false)
    end

        dxDrawText(ServerText, screenW * 0.0974, screenH * 0.1146, screenW * 0.1691, screenH * 0.1510, tocolor(255, 255, 255, 255), 1.00, "default-bold", "left", "top", false, false, true, false, false)
    dxDrawLine((screenW * 0.0710) - 1, (screenH * 0.1068) - 1, (screenW * 0.0710) - 1, screenH * 0.1419, tocolor(0, 0, 0, 255), 1, true)
    dxDrawLine(screenW * 0.0900, (screenH * 0.1068) - 1, (screenW * 0.0710) - 1, (screenH * 0.1068) - 1, tocolor(0, 0, 0, 255), 1, true)
    dxDrawLine((screenW * 0.0710) - 1, screenH * 0.1419, screenW * 0.0900, screenH * 0.1419, tocolor(0, 0, 0, 255), 1, true)
    dxDrawLine(screenW * 0.0900, screenH * 0.1419, screenW * 0.0900, (screenH * 0.1068) - 1, tocolor(0, 0, 0, 255), 1, true)
    dxDrawRectangle(screenW * 0.0710, screenH * 0.1068, screenW * 0.0190, screenH * 0.0352, tocolor(255, 255, 255, 233), true)
    dxDrawText(serverButton, (screenW * 0.0754) - 1, (screenH * 0.1094) - 1, (screenW * 0.1113) - 1, (screenH * 0.1510) - 1, tocolor(254, 254, 254, 233), 1.50, "default-bold", "left", "top", false, false, true, false, false)
    dxDrawText(serverButton, (screenW * 0.0754) + 1, (screenH * 0.1094) - 1, (screenW * 0.1113) + 1, (screenH * 0.1510) - 1, tocolor(254, 254, 254, 233), 1.50, "default-bold", "left", "top", false, false, true, false, false)
    dxDrawText(serverButton, (screenW * 0.0754) - 1, (screenH * 0.1094) + 1, (screenW * 0.1113) - 1, (screenH * 0.1510) + 1, tocolor(254, 254, 254, 233), 1.50, "default-bold", "left", "top", false, false, true, false, false)
    dxDrawText(serverButton, (screenW * 0.0754) + 1, (screenH * 0.1094) + 1, (screenW * 0.1113) + 1, (screenH * 0.1510) + 1, tocolor(254, 254, 254, 233), 1.50, "default-bold", "left", "top", false, false, true, false, false)
    dxDrawText(serverButton, screenW * 0.0754, screenH * 0.1094, screenW * 0.1113, screenH * 0.1510, tocolor(0, 0, 0, 233), 1.50, "default-bold", "left", "top", false, false, true, false, false)
end

