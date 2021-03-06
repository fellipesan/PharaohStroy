
------------------------------------------------------------------------------
-- This file is part of the PharaohStroy MMORPG client                      --
-- Copyright ?2020-2022 Prime Zeng                                          --
--                                                                          --
-- This program is free software: you can redistribute it and/or modify     --
-- it under the terms of the GNU Affero General Public License as           --
-- published by the Free Software Foundation, either version 3 of the       --
-- License, or (at your option) any later version.                          --
--                                                                          --
-- This program is distributed in the hope that it will be useful,          --
-- but WITHOUT ANY WARRANTY; without even the implied warranty of           --
-- MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the            --
-- GNU Affero General Public License for more details.                      --
--                                                                          --
-- You should have received a copy of the GNU Affero General Public License --
-- along with this program.  If not, see <http://www.gnu.org/licenses/>.    --
------------------------------------------------------------------------------

require("SceneManager")
require("ImEngine")
require("Engine")
require("WzFile")
require("Serializable")

--local io = require('io')
local WzNode = require "WzNode"
local Button = require "Button"
local Vector = require "Vector"
local Scene = require "Scene"
local MapleMap = require "MapleMap"
local Sprite = require "Sprite"
--the entry function called by C++ 
function onStart()
	--SceneManager.addScene(Scene.loadScene("./scene/SampleScene.scene"))
	Engine.onStart()
	SceneManager.addScene(MapleMap.new(910000000))
end

--it deponds on your device
function draw()
	Engine.draw()
end
-- the elapsed between two frames ( 0-1 second ) 
function update(dt)
	Engine.update(dt)
end

-- if returen true, the lua framework would cosume it 
-- else the engien(c++) will handle the event
function onTouchEvent(x,y,touchId,type)
	return Engine.onTouchEvent(x,y,touchId,type)
end

function onKeyEvent(keyCode,type)
	return Engine.onKeyEvent(keyCode,type)
end
