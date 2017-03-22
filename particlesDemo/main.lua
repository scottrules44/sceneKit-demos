local sceneKit = require "plugin.sceneKit"
if system.getInfo( "environment" ) == "simulator" then
  print( "WARNING: The sceneKit library is not available on this platform." )
else
  sceneKit.init()
  sceneKit.cameraZ(40000, .001)
  sceneKit.setBackgroundColor(1,1,1,.5)
  sceneKit.setFps(30)
  sceneKit.cameraControl(true)
  local camera = sceneKit.getCameraNode()
  camera.rotationX = -180
  camera.z = 0
  camera.y = 300
  sceneKit.debugMode("lightInfluences")
  -- make room
  local frontWall = sceneKit.newBox(1000, 10, 1000)
  local backWall = sceneKit.newBox(1000, 10, 1000)
  backWall.y=  5000
  local rightWall = sceneKit.newBox(10, 5000, 1000)
  rightWall.y=  2500
  rightWall.x=  500
  local leftWall = sceneKit.newBox(10, 5000, 1000)
  leftWall.y=  2500
  leftWall.x=  -500
  local ground = sceneKit.newBox(1000, 5000, 10)
  ground.y=  2500
  ground.z=  500
  ground:setColor(0,1,0,1)
  local roof = sceneKit.newBox(1000, 5000, 10)
  roof.y=  2500
  roof.z=  -500
end
