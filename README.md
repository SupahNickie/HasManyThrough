The has_many :through Association:

For this example app, we were tasked with free reign to create an association between one model with two other models in a has_many :through relationship. I chose to create an app based around "cops" giving "victims" tickets. The association works like this:

- (cop, id: 37) issues (ticket, id: 99) to (victim, id: 3)
- (cop, id: 37) issues (ticket, id: 104) to (victim, id: 280)
- (cop, id: 18) issues (ticket, id: 447) to (victim, id: 3)

Now, in the database, it looks like this (assuming we're just interested in the examples above):

Cops:

- (self_id): 37, tickets: 99, 104, victims: 3, 280
- (self_id): 18, tickets: 447, victims: 3

Victims:

- (self_id): 3, tickets: 99, 447, cops: 18, 37
- (self_id): 280, tickets: 104, cops: 37

Tickets:

- (self_id): 99, cop: 37, victim: 3
- (self_id): 104, cop: 37, victim: 280
- (self_id): 447, cop: 18, victim: 3

Notice that the "tickets" model relationship only called singular instances of "cop" and "victim"; this is because the tickets are what bring the cop and victim together because a "cop" has_many "victims" :through "tickets" and a "victim" has_many "cops" :through "tickets".

The screenshot below illustrates this dynamic in terms of Rails code for the show.html.erb page of an instance of "ticket" and the fact that Rails lets a coder call the attributes of the Cop and Victim so easily.

![Screencap](/public/images/screenshot1.png "Screencap of code showing actual associations")

The screenshot below then goes to show what the view actually looks like while rendered, proving that Rails can easily be adapted to allow for relatively complex relationships.

![Screencap](/public/images/screenshot2.png "Screencap of rendered view of ticket show page")
