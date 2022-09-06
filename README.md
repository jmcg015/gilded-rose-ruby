# Gilded Rose - Ruby

## How to Run

```terminal
cd gilded-rose-rb
bundle install
rspec
```

## The Challenge

I chose [this legacy code](https://github.com/emilybache/GildedRose-Refactoring-Kata/tree/main/ruby), translated by Emily Bache, in Ruby. The aim of this project was to practice good design and OOP principles by refactoring the legacy code. I chose Ruby as I hadn't used it in a while and wanted to brush up on my Ruby skills. I also wanted to practice my OOP skills. 

The Item class could not be altered, so each item has a class which inherits from Item. I did think of having a Legendary/Unique class which would take Aged Brie, Sulfuras and the BackstagePass classes as subclasses, but decided that the approach I took didn't increase or duplicate code anyway, as those subclasses would have had to have a different update method anyway. 

Initially the bulk of the logic was in the GildedRose class, which has been removed. The quality checks and logic now happen in the respective item classes, with GildedRose being responsible for adding items.

The requirements for the different items were as follows:

Normal items:
- Quality reduces by 1 each day, but cannot go below 0
- Item quality decreases by 2 when sell-by date has gone
- All item quality is never over 50

Aged Brie:
- Item quality increases by 1 as it ages
- Quality never exceeds 50

Sulfuras:
- Is a legendary item so the quality and sell-by date never decrease
- Quality never exceeds 50

Backstage Pass:
- Quality increases by 1 in value if 10+ days before the event
- Quality increases by 2 if if there are more than 5 but 10 or fewer days before the event
- Quality increases by 3 if there are 5 or fewer days before the event
- Quality is 0 if the event has happened

Conjured:
- Item quality decreases by 2
- Item quality decreases by 4 when passed sell-by date