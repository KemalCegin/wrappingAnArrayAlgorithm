import UIKit

//We have a list of track here
let tracks = ["a", "b", "c", "d", "e", "f", "g", "h"]

//Algorithm should return this playlist if we selected track "g"
let selectedTrack = "g"
var playlist = [String]()
var priorTracks = [String]()

for track in tracks {
    if track == selectedTrack || playlist.count > 0{
        playlist.append(track)
    } else {
        priorTracks.append(track)
    }
}
priorTracks
playlist

playlist + priorTracks

// * Alternative solution

let index = tracks.firstIndex(where: { return $0 == selectedTrack})

let prefixArray = tracks.prefix(upTo: index!)
let suffixArray = tracks.suffix(from: index!)

let arr = suffixArray + prefixArray
