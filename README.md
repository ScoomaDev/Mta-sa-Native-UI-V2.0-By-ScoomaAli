# Mta-sa-Native-UI-V2.0-By-ScoomaAli
===== MTA Native UI ======
MTA SA NativeUI V2.0 BETA By Scooma Ali

-- Morocco :
1. creai fichier f l mod dialk
2. copy ga3 dakxi li f sourceC o 7to f script li gaditi
3. configirih 3la 7asab dakxi li khsk

-- eng
1. add a client script in your resource 
2. copy and past the "sourceC.lua" code into your client 
3. config your menu 

-- fr 
1. ajouter un client script dans votre resource 
2. copier le code de "sourceC.lua" et coller le dans votre client  
3. configurer votre menu 


---------
notification system 

exemple : [ Press [E] to open menu ]

functions : drawNotification(string button, string text) , removeNotification()


-- exemple (client-side) 
-------- 
local NativeUI = exports.NativeUI 

local marker = createMarker(0,0,5,"cylinder",1.0,90,0,255)
addEventHandler("onClientMarkerHit", marker, function (source)
if source == localPlayer then 
    NativeUI:drawNotification("E", "pour ouvrir le menu")
    end
end )

addEventHandler("onClientMarkerLeave", marker, function (source)
if source == localPlayer then 
    NativeUI:removeNotification()
    end
    end )

-- settings (press | appuyer sur)
lang : settings = {
     lang = "fr"; -- fr = francais | eng = english
}


--- info bar 

functions = drawInfoBar(bool useArrowUpDown, useArrowRightLeft)

-- exemple 

local NativeUI = exports.NativeUI 

  NativeUI:drawNotification(true, true)
  
