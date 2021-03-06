### Dice App
#### Exercise to practise Domain Modelling and TDD

#### User Stories
```
As a board game player,
So that I can play a game
I want to be able to roll a dice
```

```
As a board game player,
So that I know how many steps I should move
Rolling a dice should give me a number between 1 and 6
```

```
As a dice app developer,
So that I give players a good game experience
If it is not already random, I want the dice roll to be randomly picked
```

```
As a board game player,
So that I can play many types of games
I want to be able to roll any number of dice at the same time
```

```
As a board game player,
So that I can keep track of past and previous rolls
I want to record each dice roll
```

```
As a board game player,
So that I know what my score is after I have rolled several dice
I want to be able to get my current score
```


#### Nouns + Verbs
As a board game **player**,
So that I can play a **game**
I want to be able to *roll* a **dice**


#### Class Diagramming

| Class              |
|:------------------:|
| Instance variables |
| .methods()         | 


| Dice            | 
|:---------------:|
| .random_value() | <--- Integer (1-6)


| Player                | 
|:---------------------:|
| @rolls                | <--- Array  
| .current_score()      |
| .roll(dice, quantity) | 
| .record(roll)         |

### Questions 

* Is stubbing a double the only way to test my Dice class method? 
* How to write a feature_spec.rb test without stubbing Dice class?