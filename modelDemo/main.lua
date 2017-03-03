local sceneKit = require "plugin.sceneKit"
sceneKit.init()
sceneKit.cameraZ(1000, .001)
sceneKit.setBackgroundColor(.1,1,1,1)
sceneKit.setFps(30)
sceneKit.cameraControl(true)
sceneKit.autoLighting(true)
local camera = sceneKit.getCameraNode()
local myRock = sceneKit.newModel(system.pathForFile("objs/bloc.scn"), "stoneMysterious")
myRock.z = -3
