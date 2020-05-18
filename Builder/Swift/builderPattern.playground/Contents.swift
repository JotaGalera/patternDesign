class ToysBuilder {
    private var name: String?
    private var age: Int?
    private var material: String?
    private var category: String?
    
    func setName(name: String) -> ToysBuilder{
        self.name = name
        return self
    }
    
    func setAge(age: Int) -> ToysBuilder {
        self.age = age
        return self
    }
    
    func setMaterial(material: String) -> ToysBuilder {
        self.material = material
        return self
    }
    
    func setCategory(category: String) -> ToysBuilder {
        self.category = category
        return self
    }
    
    func build() -> Toys{
        return Toys(builder: self)
    }
    
    class Toys {
        var builder = ToysBuilder()
        private var name: String?
        private var age: Int?
        private var material: String?
        private var category: String?
        
        init(builder: ToysBuilder){
            self.name = builder.name
            self.age = builder.age
            self.material = builder.material
            self.category = builder.category
        }

        func getFeatures()->String{
            return "Product name: \(name).\\n This product is recommended for \(age) years old.\\n His categoryThis product is made with \(material).\\n Category toy: \(category)"
        }
    }
}

class ToyStore {
    private var toyBuilder: ToysBuilder
    private var toy: ToysBuilder.Toys?
    
    init(){
        toyBuilder = ToysBuilder()
    }
    
    func makePuzzle(){
        toy = toyBuilder.setName(name: "Star Wars Puzzle")
                        .setAge(age: 5)
                        .setMaterial(material: "Paperboard")
                        .setCategory(category: "Kids")
                        .build()
    }
    
    func showToy(){
        print( toy?.getFeatures() )
    }
}
let toyStore = ToyStore()
toyStore.makePuzzle()
toyStore.showToy()
