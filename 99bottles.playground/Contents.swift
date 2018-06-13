//: Playground - noun: a place where people can play

import UIKit


func beerSong(bottles: Int) -> String {
    var lyrics: String = "";
    
    for numBottles in (1...bottles).reversed(){
        lyrics += "\(numBottles) bottles of beer on the wall, \(numBottles) bottles of beer.\n"
        if(numBottles > 1){
            lyrics += "Take one down and pass it around, \(numBottles - 1) bottles of beer on the wall.\n\n";
        }else{
            lyrics += "Take one down and pass it around, no more bottles of beer on the wall.\n\n";
        }
    }
    
    lyrics += "No more bottles of beer on the wall, no more bottles of beer.\n Go to the store and buy some more, 99 bottles of beer on the wall."
    return lyrics
}

print(beerSong(bottles: 99))
