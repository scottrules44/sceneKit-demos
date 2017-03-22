local sceneKit = require "plugin.sceneKit"
if system.getInfo( "environment" ) == "simulator" or system.getInfo( "platform" ) == "macos" or system.getInfo( "platform" ) == "win32" or system.getInfo( "platform" ) == "android" then
  print( "WARNING: The sceneKit library is not available on this platform." )
else
  sceneKit.init()
  sceneKit.cameraZ(1000, .0001)
  sceneKit.setBackgroundColor(1,1,1,0)
  sceneKit.setFps(30)
  sceneKit.setGravity(0,-100,0)
  timer.performWithDelay( 100, function  ()
    local camera = sceneKit.getCameraNode()
    camera.rotationX = -180
    camera.z = 0
    camera.y = 300
    local box = sceneKit.newBox(30,30,30)
    local createImage=system.pathForFile("crate.png")
    sceneKit.addPhysics(box, "dynamic")
    box.y = 40
    box.rotationX = 40
    box.rotationZ = 40
    box:setMaterial({createImage, createImage, createImage, createImage, createImage, createImage}) -- note 6 for cube

    local groundImage=system.pathForFile("ground.png")
    local ground = sceneKit.newBox(100,20,40)
    ground.y = -50
    sceneKit.addPhysics(ground, "static")
    ground:setMaterial({groundImage, groundImage, groundImage, groundImage, groundImage, groundImage}) -- note 6 for cube
    --corona
    local physics = require( "physics" )
    physics.start()

    local sky = display.newImage( "bkg_clouds.png", 160, 195 )

    local ground = display.newImage( "ground.png", 160, 445 )

    physics.addBody( ground, "static", { friction=0.5, bounce=0.3 } )

    local crate = display.newImage( "crate.png", 180, -50 )
    crate.rotation = 5

    physics.addBody( crate, { density=3.0, friction=0.5, bounce=0.3 } )
  end )
end
