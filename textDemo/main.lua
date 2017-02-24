local sceneKit = require "plugin.sceneKit"
sceneKit.init()
sceneKit.cameraZ(1000, 0)
sceneKit.setBackgroundColor(1,1,1,1)
sceneKit.setFps(30)
sceneKit.autoLighting(true)
local camera = sceneKit.getCameraNode()
camera.z = 50

local myTextObj = sceneKit.newText("Hello", 5)
local loadFont = native.newFont("Roboto-Black")
myTextObj:setFont("Roboto-Black", 20)
myTextObj.z= -50
