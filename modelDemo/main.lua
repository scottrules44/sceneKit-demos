
local sceneKit = require "plugin.sceneKit"
sceneKit.init()
sceneKit.cameraZ(1000, 0)
sceneKit.setBackgroundColor(1,1,1,1)
sceneKit.setFps(30)
sceneKit.autoLighting(true)
sceneKit.cameraControl(true)
local camera = sceneKit.getCameraNode()
camera.z = 50

local myRock = sceneKit.newModel(system.pathForFile("objs/bloc.scn"), "stoneMysterious")
myRock.z = -100

