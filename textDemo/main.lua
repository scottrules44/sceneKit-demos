local sceneKit = require "plugin.sceneKit"
if system.getInfo( "environment" ) == "simulator" or system.getInfo( "macos" ) or system.getInfo( "win32" ) or system.getInfo( "android" ) then
  print( "WARNING: The sceneKit library is not available on this platform." )
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
