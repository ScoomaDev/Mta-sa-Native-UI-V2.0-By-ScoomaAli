-- Scripted by: scooma Developer

local title = "Native UI"



local screenX, screenY = guiGetScreenSize()
local x, y = 1366, 768
local relX, relY = screenX/x, screenY/y
local chaletlondon = "bankgothic"

local NativeUIState = false
local panelX, panelY, panelWidth, rowHeight = 32*relX, 32*relY, 325*relX, 30*relY
local currentCategory = 1
local hoveredMenu = 1
local notificationData = {
	["text"] = false,
	["height"] = 0,
	["state"] = "",
	["tick"] = 0,
	["timer"] = nil
}
local NativeUICategories = {
	[1] = {
		["categoryName"] = title,
		["subMenu"] = {
		--	[1] = {"button", "Button", "test"},
			
		}
	},

}



function showNativeUI()
--if ( getElementModel(localPlayer) == 281 ) or ( getElementModel(localPlayer) == 280 ) or ( getElementModel(localPlayer) == 283 ) or ( getElementModel(localPlayer) == 284 ) or ( getElementModel(localPlayer) == 286 ) or ( getElementModel(localPlayer) == 285 ) or ( getElementModel(localPlayer) == 288 ) then
	if NativeUIState then return end
if NativeUIState == true then
hideNativeUI ()
else
	NativeUIState = true
	showChat(false)


	addEventHandler("onClientRender", root, render)
	
	addEventHandler("onClientKey", root, key)



	
	end


end

function hideNativeUI ()
	if not NativeUIState then return end

	NativeUIState = false
	
	removeEventHandler("onClientRender", root, render)

	removeEventHandler("onClientKey", root, key)
   showChat(true)
   if isInfoBarShowing then 
	exports.NativeUI:removeInfoBar()
   end
	
end


function render ()
	if (NativeUIState) then
		--dxDrawRectangle(panelX, panelY, panelWidth, 80*relY, tocolor(255, 255, 0, 220))
	--	dxDrawText(" Animation menu",panelX+10*relX, panelY, panelWidth+panelX-10*relX, 80*relY+panelY, tocolor(200, 0, 0, 255), 1.3, signpainter, "center", "center")
		dxDrawRectangle(panelX, panelY+80*relY, panelWidth, rowHeight, tocolor(23, 68, 184, 255))

		if (notificationData["text"]) then
			if (notificationData["state"] == "show") then
				local animProgress = (getTickCount() - notificationData["tick"]) / 200
				local animState = interpolateBetween(0, 0, 0, 80*relY, 0, 0, animProgress, "Linear")

				notificationData["height"] = animState

				if (animProgress > 1) then
					notificationData["state"] = "fix"

					notificationData["timer"] = setTimer(function()
						notificationData["tick"] = getTickCount()
						notificationData["state"] = "hide"
					end, string.len(notificationData["text"]) * 45 + 5000, 1)
				end
			elseif (notificationData["state"] == "hide") then
				local animProgress = (getTickCount() - notificationData["tick"]) / 300
				local animState = interpolateBetween(80*relY, 0, 0, 0, 0, 0, animProgress, "Linear")

				notificationData["height"] = animState

				if (animProgress > 1) then
					notificationData["text"] = false
				end
			elseif (notificationData["state"] == "fix") then
				notificationData["height"] = (80*relY)
			end

			dxDrawRectangle(panelX, panelY, panelWidth, notificationData["height"], tocolor(0, 0, 0, 210))
			
			if (notificationData["height"] == (80*relY)) then
				dxDrawText(notificationData["text"], panelX, panelY, panelWidth+panelX, notificationData["height"]+panelY, tocolor(255, 255, 255, 255), 0.5, chaletlondon, "center", "center")
			end
		end

		dxDrawText(utf8.upper(NativeUICategories[currentCategory]["categoryName"]), panelX+10*relX, panelY+80*relY, panelWidth+panelX+10*relX, rowHeight+panelY+80*relY, tocolor(255, 255, 255, 255), 0.5, chaletlondon, "center", "center")
	--	dxDrawText(""..hoveredMenu.."/"..#NativeUICategories[currentCategory]["subMenu"].."", panelX+10*relX, panelY+80*relY, panelWidth+panelX-10*relX, rowHeight+panelY+80*relY, tocolor(53, 76, 115, 255), 0.5, chaletlondon, "right", "center")

		currentY = panelY+80*relY+rowHeight
		for k, v in ipairs(NativeUICategories[currentCategory]["subMenu"]) do
			bgColor = tocolor(0, 0, 0, 210)
			textColor = tocolor(255, 255, 255, 220)
			if (k ~= hoveredMenu) then
				bgColor = tocolor(255, 255, 255, 255)
				textColor = tocolor(0, 0, 0, 220)
			else
				bgColor = tocolor(130, 130, 130, 255)
				textColor = tocolor(0, 0, 0, 255)
			end
			dxDrawRectangle(panelX, currentY+(rowHeight*(k-1)), panelWidth, rowHeight, bgColor)
			dxDrawText(v[2], panelX+10*relX, currentY+(rowHeight*(k-1)), panelWidth+panelX+10*relX, rowHeight+currentY+(rowHeight*(k-1)), textColor, 0.45, chaletlondon, "center", "center",false,false,false,true)

		end


	end
end



function key (key, state)
	if (NativeUIState) then
		if (state) then
			v = NativeUICategories[currentCategory]["subMenu"][hoveredMenu]
			if (v) then
				if (v[1] == "input") then
					if (key) then
						if (key == "backspace") then
							if (string.len(v[3]) == 0) then
								backFunction()
							end
							v[3] = backspace(v[3])
						elseif (key == "enter") then
							hoveredMenu = hoveredMenu + 1
							--playSoundEffect("menunavigate")
						end
					end
				elseif (v[1] == "button") then
					if (key == "enter") then
						enterFunction()
					end
				elseif (v[1] == "check") then
					if (key == "enter") then
						enterFunction()
					end
				end
			end

			if (key == "arrow_d") then
				if (hoveredMenu < #NativeUICategories[currentCategory]["subMenu"]) then
					hoveredMenu = hoveredMenu + 1
				else
					hoveredMenu = 1
				end
				--playSoundEffect("menunavigate")
			elseif (key == "arrow_u") then
				if (hoveredMenu > 1) then
					hoveredMenu = hoveredMenu - 1
				else
					hoveredMenu = #NativeUICategories[currentCategory]["subMenu"]
				end
				--playSoundEffect("menunavigate")
			elseif (key == "backspace") then
				v = NativeUICategories[currentCategory]["subMenu"][hoveredMenu]
				if v == nil then 
					hideNativeUI()
				end
				if (v[1] ~= "input") then
					backFunction()
				
				end
			end
		end
	end
end


function enterFunction (source)

	v = NativeUICategories[currentCategory]["subMenu"][hoveredMenu]
	if (v[1] == "button") then
		if (string.find(v[3], "NF")) then
			local categoryID = string.gsub(v[3], "NFtoPage", "")
			currentCategory = tonumber(categoryID)
			hoveredMenu = 1
			--playSoundEffect("menuenter")
		elseif (v[3] == "test") then

	-- button functions here

		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		----------------------------------------------------===========
		end
	elseif (v[1] == "check") then
		--if (not cursorUsed) or (cursorUsed and (isMouseInPosition (panelX+panelWidth-30*relX, panelY+80*relY+rowHeight+(rowHeight*2), 15*relX, rowHeight))) then
			v[3] = not v[3]
			--playSoundEffect("menunavigate")
	--	end
	end
end

function backFunction ()
	if (currentCategory > 1) then
		currentCategory = currentCategory -1
		--playSoundEffect("menuback")
		hoveredMenu = 1
		elseif not currentCategory then 
			hideNativeUI()
		else 
		hideNativeUI()
		
	end
end



-------------==================


function addNativeUIButton( text, func)
	 if type(text) == "string" and type(func) == "string" then
	table.insert(NativeUICategories[currentCategory]["subMenu"],{"button", text, func})
	 end
end

function removeNativeUIButton(id)
	if NativeUICategories[currentCategory]["subMenu"][tonumber(id)] then
		table.remove(NativeUICategories[currentCategory]["subMenu"][tonumber(id)])
	end
end

function cleanNativeUI()
  NativeUICategories = {
	[1] = {
		["categoryName"] = "Native UI",
		["subMenu"] = {
		}
	}

}
end