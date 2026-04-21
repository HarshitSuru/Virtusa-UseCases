
def calculate_fare(km, vehicle_type, hour):
    rates = {
        'Economy': 10,
        'Premium': 18,
        'SUV': 25
    }

    if vehicle_type not in rates:
        raise ValueError("Service Not Available")
    base_rate = rates[vehicle_type]
    base_fare = km * base_rate
    surge_multiplier = 1.5 if 17 <= hour <= 20 else 1
    final_fare = base_fare * surge_multiplier
    return base_rate, surge_multiplier, final_fare

try:
    km = float(input("Enter distance (in km): "))
    vehicle_type = input("Enter vehicle type (Economy/Premium/SUV): ").strip()
    hour = int(input("Enter hour of travel (0-23): "))

    base_rate, surge, total = calculate_fare(km, vehicle_type, hour)

    print("\n CityCab Price Receipt ")
    print(f"Distance        : {km} km")
    print(f"Vehicle Type    : {vehicle_type}")
    print(f"Rate per km     : ₹{base_rate}")
    print(f"Base Fare       : ₹{km * base_rate}")

    if surge > 1:
        print(f"Surge Applied   : {surge}x (Peak Hours)")
    else:
        print("Surge Applied   : No")
    print(f"Total Fare      : ₹{total}")

except ValueError as e:
    print(f"Error: {e}")
except Exception:
    print("Invalid input. Please enter correct values.")