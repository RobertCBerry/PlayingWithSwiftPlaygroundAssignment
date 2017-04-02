//
//  PlayingWithSwiftPlaygroundAssignment.swift
//  PlayingWithSwift
//
//  Created by Robert Berry on 4/2/17.
//  Copyright © 2017 Robert Berry. All rights reserved.
//

//: Introduction To Swift: Coursera: Week 18 Assignment

import UIKit
import Foundation

class Model {
    
    var favoriteFoods = ["brats", "steak", "burgers", "spaghetti", "malts"]
    
    var favoriteMovies = ["Skyfall", "Rush", "Savages", "Blow", "Sandlot"]
    
    var favoritePlaces = ["Iowa", "Coronado", "Minnesota", "Wisconsin", "Omaha"]
    
}

class Controller: Model {
    
    let model = Model()
    
    // enums should have singular names that are capitalized.
    
    enum Favorite {
        
        case foods
        case movies
        case places
    }
    
    enum Order {
        
        case favoriteToLeastFavorite
        case alphabetically
        case leastFavoriteToFavorite
    }
    
    func askQuestion(favorite: Favorite) {
        
        switch favorite {
            
        case Favorite.foods:
            print("What are your favorite foods?")
            printFavorites(favorite: "foods", typeOfFavorite: .foods, sortOrder: .favoriteToLeastFavorite)
            
        case Favorite.movies:
            print("What are your favorite movies?")
            printFavorites(favorite: "movies", typeOfFavorite: .movies, sortOrder: .favoriteToLeastFavorite)
            
        case Favorite.places:
            print("What are your favorite places?")
            printFavorites(favorite: "places", typeOfFavorite: .places, sortOrder: .favoriteToLeastFavorite)
        }
        
    }
    
    func printFavorites(favorite: String, typeOfFavorite: Favorite, sortOrder: Order) {
        
        var favoriteArray: [String]
        
        
        switch typeOfFavorite {
            
        case .foods: favoriteArray = favoriteFoods
        case .movies: favoriteArray = favoriteMovies
        case .places: favoriteArray = favoritePlaces
            
        }
        
        switch sortOrder {
            
        case .favoriteToLeastFavorite: favoriteArray == favoriteArray
        case .leastFavoriteToFavorite: favoriteArray = favoriteArray.reversed()
        case .alphabetically: favoriteArray = favoriteArray.sorted() { $0 < $1 }
            
        }
        
        let favoritesCount = favoriteArray.count
        
        if favoritesCount > 0 {
            
            var favoritesList = ""
            
            for index in 0 ..< favoritesCount {
                
                let favorite = (favoriteArray[index])
                
                if index == 0
                {
                    favoritesList += "" + favorite
                }
                else if index == favoriteFoods.count - 1 {
                    favoritesList += ", and " + favorite
                }
                else {
                    favoritesList += ", " + favorite
                }
            }
            
            let infoString = "My favorite \(favorite) are \(favoritesList)."
            print(infoString)
        }
    }
}

let controller = Controller()

print("Demonstration of printFavorites function.\n")
controller.printFavorites(favorite: "foods", typeOfFavorite: .foods, sortOrder: .favoriteToLeastFavorite)
controller.printFavorites(favorite: "movies", typeOfFavorite: .movies, sortOrder: .alphabetically)
controller.printFavorites(favorite: "places", typeOfFavorite: .places, sortOrder: .leastFavoriteToFavorite)

print("\nDemonstration of askQuestion function.\n")

controller.askQuestion(favorite: .foods)
controller.askQuestion(favorite: .movies)
controller.askQuestion(favorite: .places)

/* Steps To Solve Problem
 
 
 
 
 
 Please refer to Control Flow section For-In Loops for more information on how to develop For-In Loop that will display different types of favorites as a String. Also refer to Collection Types documentation for more information on Arrays.
 
 Please refer to Functions section specifically looking at func minMax() for more information on how to sort values in an array.
 
 Please refer to Closures section for more information on how to sort values of an array and specifically look at class someClass { for setting up printFavorites class. */























































