
// 2.
enum Size: Double {
    case small = 3.99
    case medium = 4.99
    case large = 5.99
}


// 1.
struct Flavor {
    var name: String
    var rating: Double
    
}

// 3.
struct Cone {
    let flavor: Flavor
    let topping: String
    let size: Size
    
    func eat() {
        print("Yum!")
    }
}

// 4.
class IceCreamShop {

    var flavors: [Flavor]
    var sizes: [Size]
    var toppings: [String]
    var totalSales: Double
    init(flavors: [Flavor], sizes: [Size], toppings: [String], totalSales: Double) {
        self.flavors = flavors
        self.sizes = sizes
        self.toppings = toppings
        self.totalSales = totalSales
    }
    
// 5.
    func listTopFlavors() {
        var topFlavorString = "Our top flavors are "
        for flavor in flavors {
            if flavor.rating > 4.0 {
                topFlavorString = topFlavorString + flavor.name
            }
        }
        print(topFlavorString)
    }
    
// 6.
    func orderCone(flavor: Flavor, topping: String?, size: Size) -> Cone? {
        let newCone = Cone(flavor: flavor, topping: topping ?? "noTopping", size: size)
        totalSales = totalSales + newCone.size.rawValue
        if let unwrappedTopping = topping {
            print("Your flavor \(flavor.name) icecream with \(unwrappedTopping) is \(newCone.size.rawValue)")
        } else {
            print("Your flavor \(flavor.name) icecream is \(newCone.size.rawValue)")
        }
        return newCone
    }
    
}

// 7.
let coffee = Flavor(name: "coffeeToffee", rating: 4.9)
let chocolate = Flavor(name: "Fudge", rating: 5.0)
let vanilla = Flavor(name: "M&M", rating: 3.9)

let sizes = [Size.small, Size.medium, Size.large]
let toppings = ["Marshmellos", "Chocolates", "Sprinkles"]

// 8.
let myIcecreamShop = IceCreamShop(flavors: [coffee, chocolate, vanilla], sizes: sizes, toppings: toppings, totalSales: 0)

// 9.
myIcecreamShop.listTopFlavors()

// 10.
let myCone = myIcecreamShop.orderCone(flavor: coffee, topping: "Chocolates", size: Size.medium)

// 11.
myCone?.eat()

// 12.
print(myIcecreamShop.totalSales)
