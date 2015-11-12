import MapKit

class MapViewController: UIViewController,MKMapViewDelegate {
    @IBOutlet weak var mapView:MKMapView!
    var restaurant:Restaurant!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        mapView.delegate = self
        let geoCoder = CLGeocoder()
        geoCoder.geocodeAddressString(restaurant.location, completionHandler: { placemakers , error
            in
            if error != nil {
                print(error)
                return
            }
            
            if placemakers != nil && placemakers!.count > 0 {
                let placemaker = placemakers![0]
                
                // Add Annotation
                let annotation = MKPointAnnotation()
                annotation.title = self.restaurant.name
                annotation.subtitle = self.restaurant.type
                annotation.coordinate = placemaker.location!.coordinate
                
                self.mapView.showAnnotations([annotation], animated: true)
                self.mapView.selectAnnotation(annotation, animated: true)
            }
            
            
        })
        
        
    }
    
    func mapView(mapView: MKMapView, viewForAnnotation annotation: MKAnnotation) -> MKAnnotationView? {
        let identifier = "MyPin"
        if annotation.isKindOfClass(MKUserLocation){
            return  nil
        }
        
        var annotationView = mapView.dequeueReusableAnnotationViewWithIdentifier(identifier)
        
        if annotationView == nil {
            annotationView = MKAnnotationView(annotation: annotation, reuseIdentifier: identifier)
            annotationView!.canShowCallout = true
        }
        
        let leftIconView = UIImageView(frame: CGRectMake(0, 0, 53, 53))
        leftIconView.image = UIImage(named: restaurant.image)
        annotationView!.leftCalloutAccessoryView = leftIconView
        
        return annotationView
    }

    
    
    
    
}
