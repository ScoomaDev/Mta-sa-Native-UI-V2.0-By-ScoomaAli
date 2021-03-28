local isInfoBarShowing = false


local arrowsRightLeft = false
local arrowsUpDown = false 

local _type = 0

function drawInfoBar(_arrowsUpDown, _arrowsRightLeft)
   if isInfoBarShowing then 
       outputDebugString("Info Bar Already showing !",3)
       return
   end
   
   arrowsUpDown = _arrowsUpDown or false 
   arrowsRightLeft = _arrowsRightLeft or false

   isInfoBarShowing = true 
   if arrowsUpDown and arrowsRightLeft then 
   addEventHandler("onClientRender", root, barRender_3)   
   _type = 1
   elseif arrowsUpDown and not arrowsRightLeft then 
     addEventHandler("onClientRender", root, barRender_2)
     _type = 2
   else    
     addEventHandler("onClientRender", root, barRender_1)
     _type = 3
   end
end
local screenW, screenH = guiGetScreenSize()

function barRender_1 ()
 if isInfoBarShowing then 
         dxDrawLine((screenW * 0.8514) - 1, (screenH * 0.9518) - 1, (screenW * 0.8514) - 1, screenH * 1.0000, tocolor(0, 0, 0, 255), 1, true)
        dxDrawLine(screenW * 0.9971, (screenH * 0.9518) - 1, (screenW * 0.8514) - 1, (screenH * 0.9518) - 1, tocolor(0, 0, 0, 255), 1, true)
        dxDrawLine((screenW * 0.8514) - 1, screenH * 1.0000, screenW * 0.9971, screenH * 1.0000, tocolor(0, 0, 0, 255), 1, true)
        dxDrawLine(screenW * 0.9971, screenH * 1.0000, screenW * 0.9971, (screenH * 0.9518) - 1, tocolor(0, 0, 0, 255), 1, true)
        dxDrawRectangle(screenW * 0.8514, screenH * 0.9518, screenW * 0.1457, screenH * 0.0482, tocolor(0, 0, 0, 200), true)
        dxDrawImage(screenW * 0.8946, screenH * 0.9518, screenW * 0.0344, screenH * 0.0430, "elements/enter.png", 0, 0, 0, tocolor(255, 255, 255, 255), true)
        dxDrawText("select", (screenW * 0.8514) - 1, (screenH * 0.9531) - 1, (screenW * 0.8946) - 1, (screenH * 1.0000) - 1, tocolor(0, 0, 0, 255), 1.20, "arial", "center", "center", false, false, true, false, false)
        dxDrawText("select", (screenW * 0.8514) + 1, (screenH * 0.9531) - 1, (screenW * 0.8946) + 1, (screenH * 1.0000) - 1, tocolor(0, 0, 0, 255), 1.20, "arial", "center", "center", false, false, true, false, false)
        dxDrawText("select", (screenW * 0.8514) - 1, (screenH * 0.9531) + 1, (screenW * 0.8946) - 1, (screenH * 1.0000) + 1, tocolor(0, 0, 0, 255), 1.20, "arial", "center", "center", false, false, true, false, false)
        dxDrawText("select", (screenW * 0.8514) + 1, (screenH * 0.9531) + 1, (screenW * 0.8946) + 1, (screenH * 1.0000) + 1, tocolor(0, 0, 0, 255), 1.20, "arial", "center", "center", false, false, true, false, false)
        dxDrawText("select", screenW * 0.8514, screenH * 0.9531, screenW * 0.8946, screenH * 1.0000, tocolor(255, 255, 255, 255), 1.20, "arial", "center", "center", false, false, true, false, false)
        dxDrawImage(screenW * 0.9590, screenH * 0.9518, screenW * 0.0381, screenH * 0.0430, "elements/back.png", 0, 0, 0, tocolor(255, 255, 255, 255), true)
        dxDrawText("back", screenW * 0.9231, screenH * 0.9518, screenW * 0.9663, screenH * 0.9987, tocolor(255, 255, 255, 255), 1.20, "arial", "center", "center", false, false, true, false, false)
 end
end

function barRender_2 ()
     if isInfoBarShowing then 
        dxDrawLine((screenW * 0.7760) - 1, (screenH * 0.9518) - 1, (screenW * 0.7760) - 1, screenH * 0.9948, tocolor(0, 0, 0, 255), 1, true)
        dxDrawLine(screenW * 0.9963, (screenH * 0.9518) - 1, (screenW * 0.7760) - 1, (screenH * 0.9518) - 1, tocolor(0, 0, 0, 255), 1, true)
        dxDrawLine((screenW * 0.7760) - 1, screenH * 0.9948, screenW * 0.9963, screenH * 0.9948, tocolor(0, 0, 0, 255), 1, true)
        dxDrawLine(screenW * 0.9963, screenH * 0.9948, screenW * 0.9963, (screenH * 0.9518) - 1, tocolor(0, 0, 0, 255), 1, true)
        dxDrawRectangle(screenW * 0.7760, screenH * 0.9518, screenW * 0.2204, screenH * 0.0430, tocolor(0, 0, 0, 200), true)
        dxDrawImage(screenW * 0.8192, screenH * 0.9518, screenW * 0.0344, screenH * 0.0430, "elements/enter.png", 0, 0, 0, tocolor(255, 255, 255, 255), true)
        dxDrawText("select", (screenW * 0.7760) - 1, (screenH * 0.9531) - 1, (screenW * 0.8192) - 1, (screenH * 1.0000) - 1, tocolor(0, 0, 0, 255), 1.20, "arial", "center", "center", false, false, true, false, false)
        dxDrawText("select", (screenW * 0.7760) + 1, (screenH * 0.9531) - 1, (screenW * 0.8192) + 1, (screenH * 1.0000) - 1, tocolor(0, 0, 0, 255), 1.20, "arial", "center", "center", false, false, true, false, false)
        dxDrawText("select", (screenW * 0.7760) - 1, (screenH * 0.9531) + 1, (screenW * 0.8192) - 1, (screenH * 1.0000) + 1, tocolor(0, 0, 0, 255), 1.20, "arial", "center", "center", false, false, true, false, false)
        dxDrawText("select", (screenW * 0.7760) + 1, (screenH * 0.9531) + 1, (screenW * 0.8192) + 1, (screenH * 1.0000) + 1, tocolor(0, 0, 0, 255), 1.20, "arial", "center", "center", false, false, true, false, false)
        dxDrawText("select", screenW * 0.7760, screenH * 0.9531, screenW * 0.8192, screenH * 1.0000, tocolor(255, 255, 255, 255), 1.20, "arial", "center", "center", false, false, true, false, false)
        dxDrawImage(screenW * 0.8836, screenH * 0.9518, screenW * 0.0381, screenH * 0.0430, "elements/back.png", 0, 0, 0, tocolor(255, 255, 255, 255), true)
        dxDrawText("back", screenW * 0.8477, screenH * 0.9518, screenW * 0.8909, screenH * 0.9987, tocolor(255, 255, 255, 255), 1.20, "arial", "center", "center", false, false, true, false, false)
        dxDrawImage(screenW * 0.9758, screenH * 0.9505, screenW * 0.0205, screenH * 0.0443, "elements/arrow.png", 0, 0, 0, tocolor(255, 255, 255, 255), true)
        dxDrawImage(screenW * 0.9583, screenH * 0.9518, screenW * 0.0205, screenH * 0.0443, "elements/arrow.png", 180, 0, 0, tocolor(255, 255, 255, 255), true)
        dxDrawText("navigate", (screenW * 0.9180) - 1, (screenH * 0.9531) - 1, (screenW * 0.9612) - 1, (screenH * 1.0000) - 1, tocolor(0, 0, 0, 255), 1.00, "arial", "center", "center", false, false, true, false, false)
        dxDrawText("navigate", (screenW * 0.9180) + 1, (screenH * 0.9531) - 1, (screenW * 0.9612) + 1, (screenH * 1.0000) - 1, tocolor(0, 0, 0, 255), 1.00, "arial", "center", "center", false, false, true, false, false)
        dxDrawText("navigate", (screenW * 0.9180) - 1, (screenH * 0.9531) + 1, (screenW * 0.9612) - 1, (screenH * 1.0000) + 1, tocolor(0, 0, 0, 255), 1.00, "arial", "center", "center", false, false, true, false, false)
        dxDrawText("navigate", (screenW * 0.9180) + 1, (screenH * 0.9531) + 1, (screenW * 0.9612) + 1, (screenH * 1.0000) + 1, tocolor(0, 0, 0, 255), 1.00, "arial", "center", "center", false, false, true, false, false)
        dxDrawText("navigate", screenW * 0.9180, screenH * 0.9531, screenW * 0.9612, screenH * 1.0000, tocolor(255, 255, 255, 255), 1.00, "arial", "center", "center", false, false, true, false, false)
     end
end

function barRender_3 ()
     if isInfoBarShowing then 
        dxDrawRectangle(screenW * 0.7050, screenH * 0.9518, screenW * 0.2584, screenH * 0.0352, tocolor(0, 0, 0, 255), true)
        dxDrawImage(screenW * 0.7482, screenH * 0.9518, screenW * 0.0344, screenH * 0.0430, "elements/enter.png", 0, 0, 0, tocolor(255, 255, 255, 255), true)
        dxDrawText("select", screenW * 0.7050, screenH * 0.9531, screenW * 0.7482, screenH * 1.0000, tocolor(255, 255, 255, 255), 1.20, "arial", "center", "center", false, false, true, false, false)
        dxDrawImage(screenW * 0.8126, screenH * 0.9518, screenW * 0.0381, screenH * 0.0430, "elements/back.png", 0, 0, 0, tocolor(255, 255, 255, 255), true)
        dxDrawText("back", screenW * 0.7767, screenH * 0.9518, screenW * 0.8199, screenH * 0.9987, tocolor(255, 255, 255, 255), 1.20, "arial", "center", "center", false, false, true, false, false)
        dxDrawImage(screenW * 0.9048, screenH * 0.9505, screenW * 0.0205, screenH * 0.0443, "elements/arrow.png", 0, 0, 0, tocolor(255, 255, 255, 255), true)
        dxDrawImage(screenW * 0.8873, screenH * 0.9518, screenW * 0.0205, screenH * 0.0443, "elements/arrow.png", 180, 0, 0, tocolor(255, 255, 255, 255), true)
        dxDrawText("navigate", screenW * 0.8470, screenH * 0.9531, screenW * 0.8902, screenH * 1.0000, tocolor(255, 255, 255, 255), 1.00, "arial", "center", "center", false, false, true, false, false)
        dxDrawImage(screenW * 0.9378, screenH * 0.9505, screenW * 0.0183, screenH * 0.0495, "elements/back.png", 0, 0, 0, tocolor(255, 255, 255, 255), true)
        dxDrawImage(screenW * 0.9253, screenH * 0.9518, screenW * 0.0168, screenH * 0.0482, "elements/back.png", 180, 0, 0, tocolor(255, 255, 255, 255), true)
     end
end


function removeInfoBar ()
 if isInfoBarShowing then 
     if _type == 1 then 
           removeEventHandler("onClientRender", root, barRender_3)   
           _type = 0
     elseif _type == 2 then 
          removeEventHandler("onClientRender", root, barRender_2)
          _type = 0
     elseif _type == 3 then 
          removeEventHandler("onClientRender", root, barRender_1)
          _type = 0
     end
            isInfoBarShowing = false 
           
            arrowsRightLeft = false
            arrowsUpDown = false
end
end