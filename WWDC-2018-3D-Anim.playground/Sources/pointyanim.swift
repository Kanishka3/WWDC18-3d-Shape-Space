//importing libraries
import PlaygroundSupport
import UIKit
import SceneKit

/*This file creates a pointy animation when it is click
 animation when it is clicked.
 Whenever the program is executed and whenever the button is fired, this pointy animation is scene twice.
 The pointy animation is of purple color. 
*/
public class PulseAnimation: CALayer {
public var noofpulse = Float.infinity
    
    public var firstpulsepoint: Float = 0
public var radiusofpulse: CGFloat = 100
    required public init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    override public init(layer: Any) {
        super.init(layer: layer)
    }
    public var pulse_anim_time: TimeInterval = 0.3
    public var animationGroup = CAAnimationGroup()
    public init (position: CGPoint) {
        super.init()
        self.backgroundColor = UIColor.blue.cgColor
        self.contentsScale = UIScreen.main.scale
        self.opacity = 0
        self.radiusofpulse = 100
        self.noofpulse = 2
        self.position = position
        self.bounds = CGRect(x: 2, y: 2, width: radiusofpulse * 2, height: radiusofpulse * 2)
        self.cornerRadius = radiusofpulse
        DispatchQueue.global(qos: DispatchQoS.QoSClass.default).async {
            self.setupGroup()
            
            DispatchQueue.main.async {
                self.add(self.animationGroup, forKey: "pulse")
            }
        }
        
        
        
    }
    
    
    public func createfirstanim() -> CABasicAnimation {
        let scaleAnimation = CABasicAnimation(keyPath: "transform.scale.xy")
        scaleAnimation.fromValue = NSNumber(value: firstpulsepoint)
        scaleAnimation.toValue = NSNumber(value: 1)
        scaleAnimation.duration = pulse_anim_time
        
        return scaleAnimation
    }
    
    public func createsecondanim() -> CAKeyframeAnimation {
        
        let opacityAnimation = CAKeyframeAnimation(keyPath: "opacity")
        opacityAnimation.duration = pulse_anim_time
        opacityAnimation.values = [0.4, 0.8, 0]
        opacityAnimation.keyTimes = [0, 0.2, 1]
        
        
        return opacityAnimation
    }
    
    public func setupGroup() {
        self.animationGroup = CAAnimationGroup()
        self.animationGroup.duration = pulse_anim_time
        self.animationGroup.repeatCount = noofpulse
        
        let defaultCurve = CAMediaTimingFunction(name: kCAMediaTimingFunctionDefault)
        self.animationGroup.timingFunction = defaultCurve
        
        self.animationGroup.animations = [createfirstanim(), createsecondanim()]
        
        
    }
    
    
    
}

