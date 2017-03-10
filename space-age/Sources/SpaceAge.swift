import Foundation

class SpaceAge{
    
    var seconds: Double
    var onEarth: Double
    var onMercury: Double
    var onVenus: Double
    var onMars: Double
    var onJupiter: Double
    var onSaturn: Double
    var onUranus: Double
    var onNeptune: Double
    
    
    init(_ seconds: Double){
        self.seconds = seconds
        
        onEarth = round(100 * (seconds / 31557600.0)) / 100
        
        onMercury = round(100 * (onEarth / 0.2408467)) / 100
        
	onVenus = round(100 * (onEarth / 0.61519726)) / 100       
 
        onMars = round(100 * (onEarth / 1.8808158)) / 100
        
        onJupiter = round(100 * (onEarth / 11.862615)) / 100
        
        onSaturn = round(100 * (onEarth / 29.447498)) / 100
        
        onUranus = round(100 * (onEarth / 84.016846)) / 100
        
        onNeptune = round(100 * (onEarth / 164.79132)) / 100
    }
}
