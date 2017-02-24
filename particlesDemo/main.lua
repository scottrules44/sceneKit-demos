
local sceneKit = require "plugin.sceneKit"
sceneKit.init()
sceneKit.cameraZ(1000, 0)
sceneKit.setBackgroundColor(1,1,1,1)
sceneKit.setFps(30)
sceneKit.autoLighting(true)
local camera = sceneKit.getCameraNode()
camera.z = 50

local particles =sceneKit.newParticalSystem("", "testParticle.scnp")
local node = sceneKit.newNode()
node:addParticalSystem(particles)

