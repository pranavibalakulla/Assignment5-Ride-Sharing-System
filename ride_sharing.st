| driver rider standardRide premiumRide |

Transcript clear.

driver := Driver new.
driver
    driverID: 1;
    name: 'John';
    rating: 4.8.

rider := Rider new.
rider
    riderID: 101;
    name: 'Alice'.

standardRide := StandardRide new.
standardRide
    initializeRideID: 1001
    pickup: 'Airport'
    dropoff: 'Hotel'
    distance: 10.

premiumRide := PremiumRide new.
premiumRide
    initializeRideID: 1002
    pickup: 'Mall'
    dropoff: 'University'
    distance: 15.

Transcript
    show: 'Standard Ride Fare: $';
    show: standardRide calculateFare asString;
    cr.

Transcript
    show: 'Premium Ride Fare: $';
    show: premiumRide calculateFare asString;
    cr.

driver addRide: standardRide.
driver addRide: premiumRide.

rider requestRide: standardRide.
rider requestRide: premiumRide.

driver getDriverInfo.

rider viewRides.