import UIKit
import GameKit

//The struct below sets out the events for the game

struct Event {
    var description: String
    let date : DateComponents
}

struct AllEvents {
    var events = [
        
         //       Event(description : "Sinéad O'Connor, Nothing Compares 2 U" , date : DateComponents(year: 1990, month: 2, day: 3 )),
         //       Event(description : "Madonna, Vogue" , date : DateComponents(year: 1990, month: 4, day: 14 )),
         //       Event(description : "Bombalurina, Itsy Bitsy Teenie Weenie Yellow Polka Dot Bikini" , date : DateComponents(year: 1990, month: 8, day: 25 )),
        //        Event(description : "Maria McKee, Show Me Heaven" , date : DateComponents(year: 1990, month: 9, day: 29 )),
          //      Event(description : "Vanilla Ice, Ice Ice Baby" , date : DateComponents(year: 1990, month: 12, day: 1 )),
          //      Event(description : "Cher, The Shoop Shoop Song (It's in His Kiss)" , date : DateComponents(year: 1991, month: 5, day: 4 )),
          //      Event(description : "Jason Donovan, Any Dream Will Do" , date : DateComponents(year: 1991, month: 6, day: 29 )),
           //     Event(description : "Michael Jackson, Black or White" , date : DateComponents(year: 1991, month: 11, day: 23 )),
            //    Event(description : "George Michael & Elton John, Don't Let the Sun Go Down on Me" , date : DateComponents(year: 1991, month: 12, day: 7 )),
            //    Event(description : "Queen, Bohemian Rhapsody" , date : DateComponents(year: 1991, month: 12, day: 21 )),
           //     Event(description : "Snap!, Rhythm Is a Dancer" , date : DateComponents(year: 1992, month: 8, day: 8 )),
            //    Event(description : "Boyz II Men, End of the Road" , date : DateComponents(year: 1992, month: 10, day: 31 )),
            //    Event(description : "Charles & Eddie, Would I Lie to You?" , date : DateComponents(year: 1992, month: 11, day: 21 )),
           //     Event(description : "Whitney Houston, I Will Always Love You"  , date : DateComponents(year: 1992, month: 12, day: 5 )),
             //   Event(description : "2 Unlimited, No Limit" , date : DateComponents(year: 1993, month: 2, day: 13 )),
            //    Event(description : "The Bluebells, Young at Heart" , date : DateComponents(year: 1993, month: 4, day: 3 )),
             //   Event(description : "Ace of Base, All That She Wants" , date : DateComponents(year: 1993, month: 5, day: 22 )),
            //    Event(description : "Gabrielle, Dreams" , date : DateComponents(year: 1993, month: 6, day: 26 )),
          //      Event(description : "DJ Jazzy Jeff & The Fresh Prince, Boom! Shake the Room" , date : DateComponents(year: 1993, month: 9, day: 25 )),
          //      Event(description : "Take That featuring Lulu, Relight My Fire" , date : DateComponents(year: 1993, month: 10, day: 9 )),
          //      Event(description : "D:Ream, Things Can Only Get Better" , date : DateComponents(year: 1994, month: 1, day: 22 )),
          //      Event(description : "Prince, The Most Beautiful Girl in the World" , date : DateComponents(year: 1994, month: 4, day: 23 )),
           //     Event(description : "Whigfield, Saturday Night" , date : DateComponents(year: 1994, month: 9, day: 17 )),
            //    Event(description : "Pato Banton, Baby Come Back" , date : DateComponents(year: 1994, month: 10, day: 29 )),
            //    Event(description : "East 17, Stay Another Day" , date : DateComponents(year: 1994, month: 12, day: 10 )),
            //    Event(description : "Outhere Brothers, Boom Boom Boom" , date : DateComponents(year: 1995, month: 7, day: 8 )),
           //     Event(description : "Blur, Country House" , date : DateComponents(year: 1995, month: 8, day: 26 )),
             //   Event(description : "Shaggy, Boombastic" , date : DateComponents(year: 1995, month: 9, day: 23 )),
             //   Event(description : "Coolio featuring L.V., Gangsta's Paradise" , date : DateComponents(year: 1995, month: 10, day: 28 )),
            //    Event(description : "Oasis, Don't Look Back in Anger" , date : DateComponents(year: 1996, month: 3, day: 2 )),
            //    Event(description : "The Prodigy, Firestarter" , date : DateComponents(year: 1996, month: 3, day: 30 )),
           //     Event(description : "Gina G, Ooh Aah... Just a Little Bit" , date : DateComponents(year: 1996, month: 5, day: 25 )),
            //    Event(description : "Baddiel, Skinner & The Lightning Seeds, Three Lions" , date : DateComponents(year: 1996, month: 7, day: 6 )),
            //    Event(description : "Spice Girls, Wannabe" , date : DateComponents(year: 1996, month: 7, day: 27 )),
            //    Event(description : "Fugees, Ready or Not" , date : DateComponents(year: 1996, month: 9, day: 21 )),
            //    Event(description : "No Doubt, Don't Speak" , date : DateComponents(year: 1997, month: 2, day: 22 )),
            //    Event(description : "R. Kelly, I Believe I Can Fly" , date : DateComponents(year: 1997, month: 4, day: 12 )),
            //    Event(description : "Olive, You're Not Alone" , date : DateComponents(year: 1997, month: 5, day: 17 )),
            //    Event(description : "Hanson, MMMBop" , date : DateComponents(year: 1997, month: 6, day: 7 )),
            //    Event(description : "Lou Reed, Perfect Day" , date : DateComponents(year: 1997, month: 11, day: 29 )),
            //    Event(description : "Usher, You Make Me Wanna" , date : DateComponents(year: 1998, month: 1, day: 31 )),
           //     Event(description : "Cornershop, Brimful of Asha (The Norman Cook Remix)" , date : DateComponents(year: 1998, month: 2, day: 28 )),
            //    Event(description : "Run-D.M.C. vs Jason Nevins, It's Like That" , date : DateComponents(year: 1998, month: 3, day: 21 )),
            //    Event(description : "B*Witched, C'est La Vie" , date : DateComponents(year: 1998, month: 6, day: 6 )),
           //     Event(description : "Manic Street Preachers, If You Tolerate This Your Children Will Be Next" , date : DateComponents(year: 1998, month: 9, day: 5 )),
          //      Event(description : "Fatboy Slim, Praise You" , date : DateComponents(year: 1999, month: 1, day: 16 )),
          //      Event(description : "Lenny Kravitz, Fly Away" , date : DateComponents(year: 1999, month: 2, day: 20 )),
           //     Event(description : "Shanks & Bigfoot, Sweet Like Chocolate" , date : DateComponents(year: 1999, month: 5, day: 29 )),
             //   Event(description : "Ricky Martin, Livin' la Vida Loca" , date : DateComponents(year: 1999, month: 7, day: 17 )),
            //    Event(description : "Christina Aguilera, Genie in a Bottle" , date : DateComponents(year: 1999, month: 10, day: 16 )),
                Event(description : "$1.5m Seed Round raised" , date : DateComponents(year: 2012, month: 12, day: 7 )),
                 Event(description : "$3.3m Series A announced" , date : DateComponents(year: 2013, month: 4, day: 18 )),
                 Event(description : "GC raises $7m Series B raised" , date : DateComponents(year: 2014, month: 1, day: 28 )),
                Event(description : "Announced $13m Series C announced" , date : DateComponents(year: 2016, month: 3, day: 21 )),
                Event(description : "Announced $22.5m Series D to build our global payments network " , date : DateComponents(year: 2017, month: 3, day: 19 )),
                Event(description : "raised $75m Series E" , date : DateComponents(year: 2019, month: 02, day: 18 )),
        
                Event(description : "GC & TransferWise launch first global network for bank debit" , date : DateComponents(year: 2019, month: 11, day: 6 )),
                      Event(description : "Merchants can collect payments in the US" , date : DateComponents(year: 2019, month: 9, day: 18 )),
                      Event(description : "GoCardless goes down under - collect payments in Australia" , date : DateComponents(year: 2018, month: 5, day: 1 )),
                     Event(description : "Danish Direct Debit Scheme launch " , date : DateComponents(year: 2016, month: 6, day: 1 )),
                     Event(description : "GoCardless launches in Spain" , date : DateComponents(year: 2016, month: 10, day: 1 )),
                     Event(description : "GoCardless launches in France" , date : DateComponents(year: 2015, month: 04, day: 1 )),
                     
                     Event(description : "GoCardless launches in Germany" , date : DateComponents(year: 2015, month: 09, day: 6 )),
                    Event(description : "GC starts taking payments across the eurozone" , date : DateComponents(year: 2014, month: 10, day: 1 )),
                    Event(description : "Users can start collecting payments in Canada" , date : DateComponents(year: 2018, month: 12, day: 1 )),
                    Event(description : "Users can start collecting payments in NZ" , date : DateComponents(year: 2018, month: 9, day: 1 )),
                    Event(description : "GC powers more than 50,000 businesses  worldwide" , date : DateComponents(year: 2019, month: 10, day: 1 )),
                    Event(description : "reached $1bn in annual payment processing volume " , date : DateComponents(year: 2015, month: 07, day: 1 )),
                    
                    Event(description : "Processed 1 million payments in one day" , date : DateComponents(year: 2018, month: 12, day: 1 )),
                    Event(description : "GC team grows to 60 people" , date : DateComponents(year: 2015, month: 12, day: 2 )),
                    Event(description : "GC team grows to 160 people" , date : DateComponents(year: 2017, month: 12, day: 1 )),
                    Event(description : "grows team to 270 people" , date : DateComponents(year: 2018, month: 12, day: 20 )),
                    Event(description : "Launched the Pro package" , date : DateComponents(year: 2014, month: 10, day: 1 )),
                    Event(description : "Named ‘Xero App Partner of the Year’ for the second year running" , date : DateComponents(year: 2018, month: 11, day: 5 )),
        
                    Event(description : "Announced the launch of Plus" , date : DateComponents(year: 2017, month: 02, day: 1 )),
                    Event(description : "Paris office opens" , date : DateComponents(year: 2018, month: 03, day: 2 )),
                    Event(description : "Submitted over 1.7 million payments in one day" , date : DateComponents(year: 2019, month: 11, day: 28 ))
        
    ]


}
