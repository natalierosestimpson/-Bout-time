import GameKit

let allEvents = AllEvents()

func shuffleEvents(events : [Event]) -> [Event] {
    let shuffledEvents = events.shuffled()
    return shuffledEvents
    
}
