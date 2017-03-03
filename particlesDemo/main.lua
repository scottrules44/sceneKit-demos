
local sceneKit = require "plugin.sceneKit"
sceneKit.init()
sceneKit.cameraZ(1000, .001)
sceneKit.setBackgroundColor(1,1,1,0)
sceneKit.setFps(30)
sceneKit.autoLighting(true)
sceneKit.cameraControl(true)
local camera = sceneKit.getCameraNode()
camera.z = 20

local particles =sceneKit.newParticleSystem()
particles:setImage(system.pathForFile("spark.png"))
particles.emissionDuration = 30
particles.loops = true
particles.particleVelocity = 1.5
particles.particleVelocityVariation = .2
particles.birthRate = 455
particles.particleSize = 1
particles.particleLifeSpan = 2.5
particles.particleLifeSpanVariation = .5
particles:setColor(0,0,1,1)
particles.particleSizeVariation= .5
particles.spreadingAngle = 10
local node = sceneKit.newNode()
node:addParticleSystem(particles)
