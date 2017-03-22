if system.getInfo( "environment" ) == "simulator" then
  print( "WARNING: The sceneKit library is not available on this platform." )
else
  timer.performWithDelay( 100, function  ()
    local sceneKit = require "plugin.sceneKit"
    sceneKit.init()
    sceneKit.cameraZ(1000, .001)
    sceneKit.setBackgroundColor(1,1,1,0)
    sceneKit.setFps(30)
    local camera = sceneKit.getCameraNode()
    camera.z = 300

    local node = sceneKit.newModel(system.pathForFile("art-optimized.scnassets/explorer_skinned.dae"), "root")
    node.z = -300
    node.y = 100
    node:addAnimation(system.pathForFile("art-optimized.scnassets/idle.dae"), "idle", 5, 10)
  end )
end
