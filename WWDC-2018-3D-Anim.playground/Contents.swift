/*

The music used here is "Chimes" by Hudson Mawke.
 Source of musicfile: [Link: https://www.youtube.com/watch?v=louHF9Xqil0 ]
 The WWDC18 logo used here is taken from source of
 wwdc declaration site.
 This animation is created by Kanishka using SceneKit
 -- a 3D animation module of Swift
 the background image used is taken from unsplash-- [Link: https://unsplash.com/photos/IZ01rjX0XQA]
 
 */

/*:
 #About it
 
 This program is made up of SceneKit and AVfoundation
 ##This is compl
 
 
 */
//importing all the modiles
import PlaygroundSupport
import AVFoundation
import AVKit
import SceneKit
import UIKit


//adding read watch button which starts the music, animation and pointy animation when fired.
let button: UIButton = UIButton(frame: CGRect(x: 190, y: 590, width: 180, height: 40))
button.setTitle("👀", for: UIControlState.normal)
button.titleLabel?.textColor = UIColor.white
button.titleLabel!.font =  UIFont.systemFont(ofSize: 20, weight: UIFont.Weight.medium)
button.backgroundColor = UIColor.red


//adding label of my copyright symbol
var label : UILabel = UILabel(frame: CGRect(x: 0, y: 610, width: 500, height: 40))
label.textColor = UIColor.orange
label.text =  "© Kanishka👩🏻‍💻2018"
label.font = UIFont.systemFont(ofSize: 14, weight: UIFont.Weight.black)
label.textAlignment = .right
label.isEnabled = true
label.isHighlighted = true



//defining scene + camera + view to the first view
var scene = SCNScene()
var view = SCNView(frame: CGRect(x: 10, y: 90, width: 600, height: 450))
var camera = SCNNode() //defining camera
camera.camera = SCNCamera()
view.scene = scene
view.allowsCameraControl = true
view.autoenablesDefaultLighting = true
scene.background.contents = #imageLiteral(resourceName: "wwdc18logo.jpg")
scene.rootNode.addChildNode(camera)


//defining light when the button is clicked and the shapeScene is fired
let light = SCNLight()
var lightNode = SCNNode()
lightNode.light = light
lightNode.light = light
lightNode.position = SCNVector3(x: 1.5, y: 1.5, z: 1.5)
light.castsShadow = true
//defining view + scene + camera of the shape moving scene
public var shapeView = SCNView(frame: CGRect(x: 10, y: 100, width: 700, height: 500))
public var shapeCamera = SCNNode()
public var shapeScene = SCNScene()
//defining camera
shapeCamera.camera = SCNCamera()
shapeCamera.position  = SCNVector3(0, 3, 10)
let ambientLight = SCNLight()
//make the camera move
let cameraaction = SCNAction.move(to: SCNVector3Make(44, 32, 25), duration: 185)
//adding "THE END" node
var theend = SCNText(string:"THE END", extrusionDepth: 1.0)
var the_end_node = SCNNode(geometry:theend)
the_end_node.position = SCNVector3(42, 32, 22)
shapeScene.rootNode.addChildNode(the_end_node)
cameraaction.timingMode = SCNActionTimingMode.linear
//adding different ability to the view
shapeView.autoenablesDefaultLighting = true
shapeView.allowsCameraControl = false
shapeScene.background.contents = #imageLiteral(resourceName: "seaview.jpg")
shapeScene.rootNode.addChildNode(shapeCamera)
shapeView.scene = shapeScene
shapeView.isPlaying = true


//declaring random color elements. Colors: red, blue, orange, green, purple, yellow
public let color1 = arc4random_uniform(2) == 0 ? UIColor.red : UIColor.yellow
public let color2 = arc4random_uniform(2) == 0 ? UIColor.blue : UIColor.purple
public let color3 = arc4random_uniform(2) == 0 ? UIColor.orange : UIColor.green
public let color4 = arc4random_uniform(2) == 0 ? color1 : color2
public let color5 = arc4random_uniform(2) == 0 ? color3 : color4
public  let randomDirection:Float = arc4random_uniform(2) == 0 ? -3.0 : 3.0
//defining physics element
public let force = SCNVector3( randomDirection,  10, 5)
public var atPoint = SCNVector3(0.07,0.06, 0.05)

//sphere
    let sphere: SCNGeometry = SCNSphere(radius:0.2)
var sphere_node = SCNNode(geometry: sphere)
sphere.materials.first?.diffuse.contents = color5
sphere_node.physicsBody?.applyForce(force,at: atPoint, asImpulse: true)
sphere_node.physicsBody = SCNPhysicsBody(type: .static, shape: nil)
public var sphereaction = SCNAction.move(to: SCNVector3Make(40, 30, 20), duration: 180)
sphereaction.timingMode = SCNActionTimingMode.linear
shapeScene.rootNode.addChildNode(sphere_node)
//sphere2
shapeScene.rootNode.addChildNode(sphere_node)
let sphere2: SCNGeometry = SCNSphere(radius:0.2)
var sphere_node2 = SCNNode(geometry: sphere)
sphere2.materials.first?.diffuse.contents = color5
sphere_node2.physicsBody?.applyForce(force,at: atPoint, asImpulse: true)
sphere_node2.physicsBody = SCNPhysicsBody(type: .static, shape: nil)
public var sphereaction2 = SCNAction.move(to: SCNVector3Make(40, 30, 20), duration: 180)
sphereaction.timingMode = SCNActionTimingMode.linear
shapeScene.rootNode.addChildNode(sphere_node2)
//sphere3
let sphere3: SCNGeometry = SCNSphere(radius:0.2)
var sphere_node3 = SCNNode(geometry: sphere)
sphere3.materials.first?.diffuse.contents = color5
sphere_node3.physicsBody?.applyForce(force,at: atPoint, asImpulse: true)
sphere_node3.physicsBody = SCNPhysicsBody(type: .static, shape: nil)
public var sphereaction3 = SCNAction.move(to: SCNVector3Make(42, 30, 20), duration: 180)
sphereaction3.timingMode = SCNActionTimingMode.linear
shapeScene.rootNode.addChildNode(sphere_node3)
//sphere4
let sphere4: SCNGeometry = SCNSphere(radius:0.2)
var sphere_node4 = SCNNode(geometry: sphere)
sphere4.materials.first?.diffuse.contents = color5
sphere_node4.physicsBody?.applyForce(force,at: atPoint, asImpulse: true)
sphere_node4.physicsBody = SCNPhysicsBody(type: .static, shape: nil)
public var sphereaction4 = SCNAction.move(to: SCNVector3Make(44, 30, 20), duration: 180)
sphereaction4.timingMode = SCNActionTimingMode.linear
shapeScene.rootNode.addChildNode(sphere_node4)
//pyramid
     let pyramid: SCNGeometry = SCNPyramid(width:0.3, height: 0.3, length:0.3)
 pyramid.materials.first?.diffuse.contents = color1
let pyramid_node = SCNNode(geometry: pyramid)
pyramid_node.physicsBody  = SCNPhysicsBody(type: .static, shape: nil)
pyramid_node.physicsBody?.applyForce(force,at: atPoint, asImpulse: true)
shapeScene.rootNode.addChildNode(pyramid_node)
public var pyramidaction = SCNAction.move(to: SCNVector3Make(46, 30,20), duration: 180)
pyramidaction.timingMode = SCNActionTimingMode.linear
//pyramid2
let pyramid2: SCNGeometry = SCNPyramid(width:0.3, height: 0.3, length:0.3)
pyramid2.materials.first?.diffuse.contents = color1
let pyramid_node2 = SCNNode(geometry: pyramid)
pyramid_node2.physicsBody  = SCNPhysicsBody(type: .static, shape: nil)
pyramid_node2.physicsBody?.applyForce(force,at: atPoint, asImpulse: true)
shapeScene.rootNode.addChildNode(pyramid_node2)
public var pyramidaction2 = SCNAction.move(to: SCNVector3Make(40, 30, 20), duration: 180)
pyramidaction2.timingMode = SCNActionTimingMode.linear
//pyramid3
let pyramid3: SCNGeometry = SCNPyramid(width:0.3, height: 0.3, length:0.3)
pyramid3.materials.first?.diffuse.contents = color1
let pyramid_node3 = SCNNode(geometry: pyramid)
pyramid_node3.physicsBody  = SCNPhysicsBody(type: .dynamic, shape: nil)
pyramid_node3.physicsBody?.applyForce(force,at: atPoint, asImpulse: true)
shapeScene.rootNode.addChildNode(pyramid_node3)
public var pyramidaction3 = SCNAction.move(to: SCNVector3Make(40, 30, 20), duration: 180)
pyramidaction3.timingMode = SCNActionTimingMode.linear
//pyramid4
let pyramid4: SCNGeometry = SCNPyramid(width:0.3, height: 0.3, length:0.3)
pyramid4.materials.first?.diffuse.contents = color1
let pyramid_node4 = SCNNode(geometry: pyramid)
pyramid_node4.physicsBody  = SCNPhysicsBody(type: .dynamic, shape: nil)
pyramid_node4.physicsBody?.applyForce(force,at: atPoint, asImpulse: true)
shapeScene.rootNode.addChildNode(pyramid_node4)
public var pyramidaction4 = SCNAction.move(to: SCNVector3Make(40, 30, 20), duration: 180)
pyramidaction4.timingMode = SCNActionTimingMode.easeIn
//cube
var cube: SCNGeometry = SCNBox(width: 0.3, height:0.3, length:0.1, chamferRadius:0.3)
 cube.materials.first?.diffuse.contents = color2
let cube_node = SCNNode(geometry: cube)
cube_node.physicsBody = SCNPhysicsBody(type: .static, shape: nil )
cube_node.physicsBody?.applyForce(force,at:atPoint, asImpulse:true)
public var cubeaction = SCNAction.move(to: SCNVector3Make(40, 30, 20), duration: 180)
cubeaction.timingMode = SCNActionTimingMode.easeOut
shapeScene.rootNode.addChildNode(cube_node)
//cube2
var cube2: SCNGeometry = SCNBox(width:0.4, height: 0.4, length: 0.4, chamferRadius:0.2)
cube.materials.first?.diffuse.contents = color2
let cube_node2 = SCNNode(geometry: cube)
cube_node2.physicsBody = SCNPhysicsBody(type: .static, shape: nil )
cube_node2.physicsBody?.applyForce(force,at:atPoint, asImpulse:true)
public var cubeaction2 = SCNAction.move(to: SCNVector3Make(40, 30, 20), duration: 180)
cubeaction2.timingMode = SCNActionTimingMode.linear
shapeScene.rootNode.addChildNode(cube_node2)
//cube3
var cube3: SCNGeometry = SCNBox(width:0.4, height: 0.4, length: 0.4, chamferRadius:0.2)
cube3.materials.first?.diffuse.contents = color2
let cube_node3 = SCNNode(geometry: cube)
cube_node3.physicsBody = SCNPhysicsBody(type: .dynamic, shape: nil )
cube_node3.physicsBody?.applyForce(force,at:atPoint, asImpulse:true)
public var cubeaction3 = SCNAction.move(to: SCNVector3Make(40, 30, 20), duration: 180)
cubeaction3.timingMode = SCNActionTimingMode.linear
shapeScene.rootNode.addChildNode(cube_node3)
//cube4
var cube4: SCNGeometry = SCNBox(width:0.4, height: 0.4, length: 0.4, chamferRadius:0.4)
cube4.materials.first?.diffuse.contents = color2
let cube_node4 = SCNNode(geometry: cube)
cube_node4.physicsBody = SCNPhysicsBody(type: .dynamic, shape: nil )
cube_node4.physicsBody?.applyForce(force,at:atPoint, asImpulse:true)
public var cubeaction4 = SCNAction.move(to: SCNVector3Make(40, 30, 20), duration: 180)
cubeaction4.timingMode = SCNActionTimingMode.linear
shapeScene.rootNode.addChildNode(cube_node4)
//event show
 var show: SCNGeometry = SCNText(string: "WWDC2018",extrusionDepth:1.5)
var showcolor = UIColor.lightGray
show.materials.first?.diffuse.contents = showcolor
let show_node = SCNNode(geometry: show)
show_node.physicsBody = SCNPhysicsBody(type: .static, shape: nil)
var font = UIFont(name: "Helvatica",size:13)
var scaleValue = SCNVector3(44.0, 30.0, 35.0)
show_node.physicsBody?.applyForce(scaleValue, at: SCNVector3(40, 30,20),asImpulse: true)
shapeScene.rootNode.addChildNode(show_node)
//torus
var torus : SCNGeometry = SCNTorus(ringRadius:0.4, pipeRadius:0.2)
torus.materials.first?.diffuse.contents = color1
var _torus_node = SCNNode(geometry: torus)
_torus_node.physicsBody?.applyForce(force, at: atPoint , asImpulse: true)
_torus_node.physicsBody = SCNPhysicsBody(type: .static, shape: nil)
public var torusaction =  SCNAction.move(to:SCNVector3Make(40, 30, 20),duration: 180)
torusaction.timingMode =  SCNActionTimingMode.linear
shapeScene.rootNode.addChildNode(_torus_node)
//torus2
var torus2 : SCNGeometry = SCNTorus(ringRadius:0.4, pipeRadius:0.2)
torus2.materials.first?.diffuse.contents = color2
var _torus_node2 = SCNNode(geometry: torus2)
_torus_node2.physicsBody?.applyForce(force, at: atPoint , asImpulse: true)
_torus_node2.physicsBody = SCNPhysicsBody(type: .static, shape: nil)
public var torusaction2 =  SCNAction.move(to:SCNVector3Make(40, 30, 20),duration: 180)
torusaction2.timingMode = SCNActionTimingMode.linear
shapeScene.rootNode.addChildNode(_torus_node2)

//torus3
var torus3 : SCNGeometry = SCNTorus(ringRadius:0.4, pipeRadius:0.2)
torus3.materials.first?.diffuse.contents = color3
var _torus_node3 = SCNNode(geometry: torus3)
_torus_node3.physicsBody?.applyForce(force, at: atPoint , asImpulse: true)
_torus_node3.physicsBody = SCNPhysicsBody(type: .dynamic, shape: nil)
public var torusaction3 =  SCNAction.move(to:SCNVector3Make(40, 30, 20),duration: 180)
torusaction3.timingMode = SCNActionTimingMode.linear
shapeScene.rootNode.addChildNode(_torus_node3)
//torus4
var torus4 : SCNGeometry = SCNTorus(ringRadius:0.4, pipeRadius:0.2)
torus4.materials.first?.diffuse.contents = color4
var _torus_node4 = SCNNode(geometry: torus4)
_torus_node4.physicsBody?.applyForce(force, at: atPoint , asImpulse: true)
_torus_node4.physicsBody = SCNPhysicsBody(type: .dynamic, shape: nil)
public var torusaction4 =  SCNAction.move(to:SCNVector3Make(40, 30, 20),duration: 180)
torusaction4.timingMode = SCNActionTimingMode.linear
shapeScene.rootNode.addChildNode(_torus_node4)

//capsule

let capsule: SCNGeometry = SCNCapsule(capRadius:0.2, height:1.0)
capsule.materials.first?.diffuse.contents = color3
let capsule_node = SCNNode(geometry: capsule)
capsule_node.physicsBody = SCNPhysicsBody(type: .dynamic, shape: nil)
capsule_node.physicsBody?.applyForce(force, at: atPoint, asImpulse: true)
//animation function
public var capsuleaction = SCNAction.move(to: SCNVector3Make(40, 30, 20), duration:180)
capsuleaction.timingMode = SCNActionTimingMode.linear
shapeScene.rootNode.addChildNode(capsule_node)
//capsule2

let capsule2: SCNGeometry = SCNCapsule(capRadius:0.2, height:1.0)
capsule2.materials.first?.diffuse.contents = color3
let capsule_node2 = SCNNode(geometry: capsule)
capsule_node2.physicsBody = SCNPhysicsBody(type: .dynamic, shape: nil)
capsule_node2.physicsBody?.applyForce(force, at: atPoint, asImpulse: true)
//animation function
public var capsuleaction2 = SCNAction.move(to: SCNVector3Make(40, 30, 20), duration:180)
capsuleaction.timingMode = SCNActionTimingMode.linear
shapeScene.rootNode.addChildNode(capsule_node2)
//capsule3
let capsule3: SCNGeometry = SCNCapsule(capRadius:0.2, height:1.0)
capsule3.materials.first?.diffuse.contents = color3
let capsule_node3 = SCNNode(geometry: capsule)
capsule_node3.physicsBody = SCNPhysicsBody(type: .static, shape: nil)
capsule_node3.physicsBody?.applyForce(force, at: atPoint, asImpulse: true)
//animation function
public var capsuleaction3 = SCNAction.move(to: SCNVector3Make(40, 30, 20), duration:180)
capsuleaction3.timingMode = SCNActionTimingMode.linear
shapeScene.rootNode.addChildNode(capsule_node3)
//capsule4
let capsule4: SCNGeometry = SCNCapsule(capRadius:0.2, height:1.0)
capsule4.materials.first?.diffuse.contents = color3
let capsule_node4 = SCNNode(geometry: capsule)
capsule_node4.physicsBody = SCNPhysicsBody(type: .static, shape: nil)
capsule_node4.physicsBody?.applyForce(force, at: atPoint, asImpulse: true)
//animation function
public var capsuleaction4 = SCNAction.move(to: SCNVector3Make(40, 30, 20), duration:180)
capsuleaction4.timingMode = SCNActionTimingMode.linear
shapeScene.rootNode.addChildNode(capsule_node4)

//cylinder
let cylinder : SCNGeometry = SCNCylinder(radius:0.6,height:0.5)
cylinder.materials.first?.diffuse.contents = color1
let cylinder_node = SCNNode(geometry: cylinder)
cylinder_node.physicsBody = SCNPhysicsBody(type: .dynamic, shape: nil)
cylinder_node.physicsBody?.applyForce(force, at: atPoint, asImpulse: true)
//animation function
public var cylinderaction = SCNAction.move(to: SCNVector3Make(40, 30,20), duration: 180)
cylinderaction.timingMode =  SCNActionTimingMode.linear
shapeScene.rootNode.addChildNode(cylinder_node)
//cylinder2
let cylinder2 : SCNGeometry = SCNCylinder(radius:0.6,height:0.5)
cylinder2.materials.first?.diffuse.contents = color1
let cylinder_node2 = SCNNode(geometry: cylinder2)
cylinder_node2.physicsBody = SCNPhysicsBody(type: .dynamic, shape: nil)
cylinder_node2.physicsBody?.applyForce(force, at: atPoint, asImpulse: true)
//animation function
public var cylinderaction2 = SCNAction.move(to: SCNVector3Make(40, 30,20), duration: 180)
cylinderaction2.timingMode =  SCNActionTimingMode.linear
shapeScene.rootNode.addChildNode(cylinder_node2)
//cylinder3
let cylinder3 : SCNGeometry = SCNCylinder(radius:0.6,height:0.5)
cylinder3.materials.first?.diffuse.contents = color1
let cylinder_node3 = SCNNode(geometry: cylinder3)
cylinder_node3.physicsBody = SCNPhysicsBody(type: .static, shape: nil)
cylinder_node3.physicsBody?.applyForce(force, at: atPoint, asImpulse: true)
//animation function
public var cylinderaction3 = SCNAction.move(to: SCNVector3Make(40, 30,20), duration: 180)
cylinderaction3.timingMode =  SCNActionTimingMode.linear
shapeScene.rootNode.addChildNode(cylinder_node3)
//cylinder4
let cylinder4 : SCNGeometry = SCNCylinder(radius:0.6,height:0.5)
cylinder4.materials.first?.diffuse.contents = color1
let cylinder_node4 = SCNNode(geometry: cylinder3)
cylinder_node4.physicsBody = SCNPhysicsBody(type: .static, shape: nil)
cylinder_node4.physicsBody?.applyForce(force, at: atPoint, asImpulse: true)
//animation function
public var cylinderaction4 = SCNAction.move(to: SCNVector3Make(40, 30,20), duration: 180)
cylinderaction4.timingMode =  SCNActionTimingMode.linear
shapeScene.rootNode.addChildNode(cylinder_node4)




//cone
var cone : SCNGeometry = SCNCone(topRadius:0.0, bottomRadius:0.4, height:0.3)
var cone_node = SCNNode(geometry: cone)
cone_node.physicsBody = SCNPhysicsBody(type: .dynamic, shape: nil)
cone.materials.first?.diffuse.contents = color2
cone_node.physicsBody?.applyForce(force, at: atPoint, asImpulse: true)
//animation function
public var coneaction = SCNAction.move(to:SCNVector3Make(40, 30, 20), duration: 180)
coneaction.timingMode = SCNActionTimingMode.linear
shapeScene.rootNode.addChildNode(cone_node)
//cone2
var cone2 : SCNGeometry = SCNCone(topRadius:0.0, bottomRadius:0.4, height:0.3)
var cone_node2 = SCNNode(geometry: cone2)
cone_node2.physicsBody = SCNPhysicsBody(type: .dynamic, shape: nil)
cone2.materials.first?.diffuse.contents = color2
cone_node2.physicsBody?.applyForce(force, at: atPoint, asImpulse: true)
//animation function
public var coneaction2 = SCNAction.move(to:SCNVector3Make(40, 30, 20), duration: 180)
coneaction2.timingMode = SCNActionTimingMode.linear
shapeScene.rootNode.addChildNode(cone_node2)
//cone3
var cone3 : SCNGeometry = SCNCone(topRadius:0.0, bottomRadius:0.3, height:0.4)
var cone_node3 = SCNNode(geometry: cone3)
cone_node3.physicsBody = SCNPhysicsBody(type: .static, shape: nil)
cone2.materials.first?.diffuse.contents = color2
cone_node3.physicsBody?.applyForce(force, at: atPoint, asImpulse: true)
//animation function
public var coneaction3 = SCNAction.move(to:SCNVector3Make(40, 30, 20), duration: 180)
coneaction3.timingMode = SCNActionTimingMode.linear
shapeScene.rootNode.addChildNode(cone_node3)
//cone4
var cone4 : SCNGeometry = SCNCone(topRadius:0.0, bottomRadius:0.3, height:0.4)
var cone_node4 = SCNNode(geometry: cone4)
cone_node4.physicsBody = SCNPhysicsBody(type: .static, shape: nil)
cone4.materials.first?.diffuse.contents = color2
cone_node4.physicsBody?.applyForce(force, at: atPoint, asImpulse: true)
//animation function
public var coneaction4 = SCNAction.move(to:SCNVector3Make(40, 30, 20), duration: 180)
coneaction4.timingMode = SCNActionTimingMode.linear
shapeScene.rootNode.addChildNode(cone_node4)
//tube
let tube: SCNGeometry = SCNTube(innerRadius:0.2, outerRadius:0.3, height:0.5)
var tube_node = SCNNode(geometry: tube)
tube_node.physicsBody = SCNPhysicsBody(type: .dynamic, shape: nil)
tube.materials.first?.diffuse.contents = color5
tube_node.physicsBody?.applyForce(force, at: atPoint, asImpulse: true)
var tubeaction = SCNAction.move(to: SCNVector3Make(40, 30, 20), duration: 180)
tubeaction.timingMode = SCNActionTimingMode.linear
shapeScene.rootNode.addChildNode(tube_node)
//tube2
let tube2: SCNGeometry = SCNTube(innerRadius:0.2, outerRadius:0.4, height:0.5)
var tube_node2 = SCNNode(geometry: tube2)
tube_node2.physicsBody = SCNPhysicsBody(type: .dynamic, shape: nil)
tube2.materials.first?.diffuse.contents = color5
tube_node2.physicsBody?.applyForce(force, at: atPoint, asImpulse: true)
var tubeaction2 = SCNAction.move(to: SCNVector3Make(40, 32, 20), duration: 180)
tubeaction2.timingMode = SCNActionTimingMode.easeIn
shapeScene.rootNode.addChildNode(tube_node2)
//tube3
let tube3: SCNGeometry = SCNTube(innerRadius:0.2, outerRadius:0.4, height:0.5)
var tube_node3 = SCNNode(geometry: tube3)
tube_node3.physicsBody = SCNPhysicsBody(type: .static, shape: nil)
tube3.materials.first?.diffuse.contents = color5
tube_node3.physicsBody?.applyForce(force, at: atPoint, asImpulse: true)
var tubeaction3 = SCNAction.move(to: SCNVector3Make(40, 34, 20), duration: 180)
tubeaction3.timingMode = SCNActionTimingMode.easeOut
shapeScene.rootNode.addChildNode(tube_node3)
//tube4
let tube4: SCNGeometry = SCNTube(innerRadius:0.2, outerRadius:0.4, height:0.5)
var tube_node4 = SCNNode(geometry: tube4)
tube_node4.physicsBody = SCNPhysicsBody(type: .static, shape: nil)
tube4.materials.first?.diffuse.contents = color5
tube_node4.physicsBody?.applyForce(force, at: atPoint, asImpulse: true)
var tubeaction4 = SCNAction.move(to: SCNVector3Make(40, 36, 20), duration: 180)
tubeaction4.timingMode = SCNActionTimingMode.easeInEaseOut
shapeScene.rootNode.addChildNode(tube_node4)
var allGeometries = [tube_node, cylinder_node, _torus_node, capsule_node, sphere_node, pyramid_node, show_node, cube_node, cone_node]
let pulseAnim = PulseAnimation(position: CGPoint(x: 500/2, y: 350))

func showingAllGeoms(){
    for nodes in scene.rootNode.childNodes{
            nodes.removeFromParentNode()
        }
    }

        
        
        func cleanUp () {
            for node in shapeScene.rootNode.childNodes {
                if node.presentation.position.y < -2 {
                    node.removeFromParentNode()
                }
            }
        }

////adding applefield as background
//shapeScene.background.contents = SCNParticleSystem(named: "applefield.scnp", inDirectory:"")

//adding sound*/
//audio on clicking button
var bgSound = NSURL(fileURLWithPath: Bundle.main.path(forResource: "chimes", ofType: "mp3")!)

var bgPlayer = try AVAudioPlayer(contentsOf: bgSound as URL)
//defining the plane of scene.
let planeGeometry = SCNPlane(width: 50.0, height: 50.0)
var lightGray : UIColor = UIColor.lightGray
planeGeometry.materials.first?.diffuse.contents = lightGray
let planeNode = SCNNode(geometry: planeGeometry)
planeNode.eulerAngles = SCNVector3(x: GLKMathDegreesToRadians(-90), y: 0, z: 0)
planeNode.position = SCNVector3(x: 0, y: -0.5, z: 0)
shapeScene.rootNode.addChildNode(planeNode)
bgPlayer.prepareToPlay()
//adding point animation
let pulse = PulseAnimation(position: CGPoint(x: 250, y: 250))

view.layer.insertSublayer(pulse, below: view.layer)
//adding the firstview and here starts the execution of whole
class FirstView: UIView{
    
    var didChange: Bool = false
    
    
    override init(frame: CGRect) {
        
        super.init(frame: frame)
     
          self.backgroundColor = UIColor( patternImage: UIImage(named: "seaview.jpg")!)
    
        self.addSubview(button)
        self.addSubview(label)
        
        
        button.addTarget(self, action: #selector(buttonPressed), for: .touchUpInside)
        }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")

      
    }
    @objc func buttonPressed() {
        bgPlayer.play()
        button.removeFromSuperview()
        
        view.removeFromSuperview()
   label.removeFromSuperview()
//adding pulsing animation when the button is click
        let position_of_pulse: CGPoint = CGPoint(x: 500/2, y: 350)
        
        let pulse = PulseAnimation(position: position_of_pulse)
        let shapeviewl = shapeView
        self.layer.insertSublayer(pulse, above: view.layer)
        _torus_node.isHidden = false
  sphere_node.isHidden = false
        sphere_node2.isHidden = false
        sphere_node3.isHidden = false
        sphere_node4.isHidden = false
        capsule_node.isHidden = false
        show_node.isHidden = false
  
planeNode.isHidden = false
           pyramid_node.isHidden = false
        pyramid_node2.isHidden = false
        pyramid_node3.isHidden = false
        pyramid_node4.isHidden = false
        
        //adding all the function
        pyramid_node.runAction(pyramidaction)
        _torus_node.runAction(torusaction)
        
        cone_node.runAction(coneaction)
 shapeCamera.runAction(cameraaction)
        //all cone
        cone_node.runAction(coneaction)
        cone_node2.runAction(coneaction2)
        cone_node3.runAction(coneaction3)
        cone_node4.runAction(coneaction4)
        //all spheres
        sphere_node.runAction(sphereaction)
        sphere_node2.runAction(sphereaction2)
        sphere_node3.runAction(sphereaction3)
        sphere_node4.runAction(sphereaction4)
        //all pyramids
        pyramid_node2.runAction(sphereaction2)
        pyramid_node3.runAction(sphereaction3)
        pyramid_node4.runAction(sphereaction4)
        //all capsules
        capsule_node.runAction(capsuleaction)
        capsule_node2.runAction(capsuleaction2)
        capsule_node3.runAction(capsuleaction3)
        capsule_node4.runAction(capsuleaction4)
        //all cubes
        cube_node.runAction(cubeaction)
        cube_node2.runAction(cubeaction2)
        cube_node3.runAction(cubeaction3)
        cube_node4.runAction(cubeaction4)
//       randomShapeShow()
        //all cylinder
        cylinder_node.runAction(cylinderaction)
        cylinder_node2.runAction(cylinderaction2)
        cylinder_node.runAction(cylinderaction3)
        cylinder_node4.runAction(cylinderaction4)
          cylinder_node.isHidden = false
        //all tubes
           tube_node.runAction(tubeaction)
        tube_node2.runAction(tubeaction2)
        tube_node3.runAction(tubeaction3)
        tube_node4.runAction(tubeaction4)
        //torus
        _torus_node.runAction(torusaction)
        _torus_node2.runAction(torusaction2)
        _torus_node3.runAction(torusaction3)
        _torus_node4.runAction(torusaction4)
    }
    
    
    
} 



let homeView = FirstView(frame: CGRect(x: 10, y:10, width: 500, height:700))
homeView.addSubview(shapeView)
homeView.addSubview(view)


  PlaygroundPage.current.liveView = homeView


