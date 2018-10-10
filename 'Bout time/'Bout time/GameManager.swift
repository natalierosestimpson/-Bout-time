import GameKit

struct EventsForRound {
    
    var eventOne: Event
    var eventTwo: Event
    var eventThree: Event
    var eventFour: Event

}

class GameManager {
    var roundNumber: Int = 0
    let eventsPerRound = 4
    let totalNumberOfRounds = 6
    let allEvents = AllEvents()
    
    func shuffleEvents() -> [Event] {
        let shuffledEvents = allEvents.events.shuffled()
        return shuffledEvents
    
    }
    
    func pickEventsForRound(shuffledEvents: [Event]) -> EventsForRound {
        let eventsForRound: EventsForRound = EventsForRound(eventOne: shuffledEvents[0 + roundNumber], eventTwo: shuffledEvents[1 + roundNumber], eventThree: shuffledEvents[2 + roundNumber], eventFour: shuffledEvents[3 + roundNumber])
        return eventsForRound
    }
    
    /*func checkOrder(ofEventsUsedInRound events: EventsForRound) -> Bool {
        if events.eventOne.date < events.eventTwo.date && events.eventTwo.date < events.eventThree.date && events.eventThree.date < events.eventFour.date {return true}
        else {return false}
    }
    
    */
        
}


