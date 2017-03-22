local sceneKit = require "plugin.sceneKit"
if system.getInfo( "environment" ) == "simulator" then
  print( "scenekit plugin not supported device" )
else
  sceneKit.init()
  sceneKit.cameraZ(1000, .001)
  sceneKit.setBackgroundColor(1,1,1,0)
  sceneKit.setFps(30)
  local camera = sceneKit.getCameraNode()
  camera.z = 50

  local myTextObj = sceneKit.newText("Hello", 5)
  local loadFont = native.newFont("Roboto-Black")
  myTextObj:setFont("Roboto-Black", 20)
  myTextObj.z= -50
  myTextObj.x= -28
end
