
local sceneKit = require "plugin.sceneKit"
sceneKit.init()
sceneKit.cameraZ(1000, 0)
sceneKit.setBackgroundColor(1,1,1,1)
sceneKit.setFps(30)
sceneKit.autoLighting(true)
local camera = sceneKit.getCameraNode()
camera.z = 50
local camera = sceneKit.getCameraNode()
camera.z = 300

local node = sceneKit.newModel(system.pathForFile("art-optimized.scnassets/explorer_skinned.dae"), "root")
node.z = -100
node:addAnimation(system.pathForFile("art-optimized.scnassets/idle.dae"), "idle")