import UIKit

//var str = "Hello, playground"
//
//var string = "Hello"
//var myInt = 21
//var double = 21.7
//
//var myBoolean = false

//déclaration explicite//

//var string2:String = "Bonsoir"

//Modification de variable

//myInt = 6

//Déclaration de boucle//

//for i in 0 ... 9 {
//    myInt += i
//}

//affichage//

//var quantite
//var prix = 34.33
//
//"Le prix est "

// Exemple 2 - Les constantes //

//var string = "Hello, playground"
//string
//print(string)
//
//var salutation = "Salut !"
//let nom = "Sandy"
//
//salutation = "Hi !"
//nom = "MouloudZebi"

//print(salutation + " " + nom)
//
//let quantite = 42
//let prix = 34.5
//
//"Prix total : \(Double(quantite) * prix) €"

// Exemple 3 - //
//
//var str = "Hello, playground"

//Déclaration d'une variable optionnelle de type chaine
//var movie: String?

//Attribution d'une valeur à la variable
//movie = "StarWars"

//Syntaxe conseillé if - let
//if let movie = movie {
//    movie
//} else {
//    "Aucun film"
//}

// Exemple 4 //

//var str = "Hello, playground"

//Strings
//let hey = "Salut"
//let name = "Test"

// Equivalent de mutable string avec concaténation
//var salut = hey + " " + name

// 2e exemple

//let batman = "Batman"
//let superman = "Superman"

// Interpolation des chaines //

//var movie = "\(batman) et \(superman) vont s'affronter dans le prochain film."
//
//var costumes2 = batman + " possède " + String(5*5) + " costumes "

// 3e cas : vérification d'égalité de contenu de variables

//let batman2 = "Batman"
//let batman3 = "bat" + "man"

//comparaison de deux chaines //

//batman2 == batman3

// conversion //

//let string1 = String(1)
//pasage par une NSString pour convertir un double ou un float

//let string2 = NSString(format: "%0.2f", 7.99)

//conversion //

//let score2 = ("25" as NSString).intValue
//score2

//test d'une chaine vide
//var vide = "aaa"
//vide.isEmpty

// Switch //

//let windSpeed = 11
//switch windSpeed {
//    case 0...3:
//        print("C'est plutôt calme dehors")
//    case 4...6:
//        print("Léger vent")
//    case 7...9:
//        print("Ça commence a secouer")
//    case 10...12:
//        print("Ça secoue sec")
//    case 13:
//        print("13 !")
//    default:
//    break;
//}

// Tableau //

//
//var str = "Hello, playground"
//
////déclaration d'un tab non modifiable
//
//let HPMovies = ["L'école des sorciers", "La chambre des secrets", "Le prisionner d'Askaban"]
//
////Déclaration explicite longue
//let HPMoviesLongForm:Array<String> = HPMovies
//
////Déclaration explicite courte
//let HPMoviesLongForm2:[String] = HPMovies
//
////Déclaration d'un tableau vide
//let myArray:[String] = []
//
////Récupération du premier élément
//let firstOne = HPMovies[0]
//
////Récupération du dernier élément
//let lastOne = HPMovies[HPMovies.count - 1]
//
////taille du tableau
//
//HPMovies.count
//
////déclaration d'un tab modifiable
//
////mutable array
//var mutableHP = HPMovies
//
////Ajout d'un élément en fin de tab
//mutableHP.append("La coupe de feu")
//
////Insertion à un index
//mutableHP.insert("L'ordre du phénix", at: 1)

//suppression du n "l"ment, ici 3e
//mutable.removeLast(at:3)

//suppression du dernier élément
//mutable.removeLast()

//suppression de tous les éléments avec option pour conserver la capacité en mémoire
//mutableHP.removeAll(keepCapacity: false)


//tab associatif //

//déclaration avec inférence
//var countries = ["Fr": "France", "Es": "Espagne", "It": "Italie"]
//
////déclaration explicite longue
//let countries2: Dictionary<String, String> = countries
//
////déclaration explicite courte
//let countries3: [String : String] = countries
//
////déclaration vide
//let empty = Dictionary<String, String> ()
//
////comptage des éléments
//countries.count
//
////verfification de l'existence d'une clé
//let countryKey = "Fr"
//
//if let countryName = countries[countryKey] {
//    "La clé \(countryKey) correspond au pays \(countryName)"
//} else {
//    "Nom trouvé !"
//}
//
////Ajout d'un élément
//countries["Ru"] = "Russie"
//
////modification d'un élément (sensible à la casse)
//countries["Es"] = "Spain"
//
////suppression d'un élément
////countries["Es"] = nil
//
////parcourir du dictionary
//for (key, value) in countries {
//    "\(key) correspond au pays \(value)"
//}
//countries


//déclaration d'une énumération de chaine
enum MovieType: String {
    case ScienceFiction = "Science Fiction", Drame = "Drame", Comedie = "Comedie"
}

//structure du film
//struct Movie {
//    var title: String
//    var type: MovieType
//}
//
////déclaration d'un film en utilisant la structure
//var movie1 = Movie(title: "La vérité si je mens", type: .Comedie)
//
////traitement de différent cas grace au controle de flux Switch/case
//switch movie1.type {
//case .ScienceFiction:
//    "\(movie1.title) est un film de \(movie1.type.rawValue)"
//case .Drame:
//    "\(movie1.title) est un \(movie1.type.rawValue)"
//default:
//    "\(movie1.title) est une \(movie1.type.rawValue)"
//}


// tuples

var str = "Bonjour"
let num = 1000

var monTuple = (str, num)
var monAutreTuple = (str, num, 12345, "Du texte")

//déclaration d'un tuple
let movie = (1977, "Star Wars - A new Hope")

//récupération des valeurs via l'index
movie.0
movie.1

//utilisation d'une constante étant elle-meme un tuple
let(year, title) = movie

// récupération des valeurs
year
title

//tuple typé
let anotherMovie:(year:Int, title:String) = (1979, "Star wars - The Empire strikes back")

//récupération des valeurs de notre type a travers le type de données
anotherMovie.title
anotherMovie.year

//fonction qui renvoie un tuple
func currentMovie() -> (year:Int, title:String) {
    return (1981, "Star Wars - Return of the Jedi")
}

//Récupération des valeurs via la fonction
currentMovie().year
currentMovie().title


//tableau de tuples (param : film, année et age mini)
let movies = [("Star Wars - A new hope", 1977, 12), ("Star Wars - The Empire strikes back", 1979, 16), ("Star Wars - Return of the Jedi", 1981, 0)]

//parcours du tableau et traitement des valeurs
for movie in movies {
    switch movie {
    case (_,_,12):
        "Ce film est interdit au moins de \(movie.2) ans"
    case (_,_,0...10):
        "Ce film est pour toute la famille"
    default:
        "Ce film ne rentre dans aucun critère défini"
    }
}

//Inversion des variables
var num1 = 10;
var num2 = 25;

var temp = num1
num1 = num2
num2 = temp

num1
num2
