# Zeta

This repository was created for an app called Zeta, originally meant for organizations to easily access the contact information for their leaders and other members.

The app was meant to be an offshoot of the iOS FoodTracker app tutorial, but this proved to be far more involved than originally expected. The functionality is currently only limited to the scope of the tutorial itself. I'll pick it up again in the future.

### What I Attempted
The app is a basic tutorial to deep dive into iOS development with Swift. It consists of two views, a Table View and a regular content View. A user can select a meal from the list view and edit it, or can create a new one using the add button at the top right. 

The app persists data using NSUserDefaults (which the tutorial did not go into; more on that later.)

### What I Learned
A lot! I had only seen Swift code before and have never made a fully functioning app from scratch. It was cool to see how storyboarding works and there was even some cool stuff in the tutorial about making storyboard views "Inspectable" and "Designable", which paralleled some functionality in the Unity editor that I've had much more experience with.

I also tried to avoid copying and pasting so I got to fully understand what the methods and variables I was creating did. There's a fair amount of similarity between the way Swift organizes things and the way a web framework like React does, and it's cool to see the similarities between different MVC implementations.

### What Didn't Work
The major pain point with this tutorial is the banner at the top of the first section:
```
This document is no longer being updated. For the latest information about Apple SDKs, visit the documentation website.
```
To which I said, "No big deal, I'm sure not much has changed!"

That's true for the most part, but the serious pain was twofold:

1. When asked to make a segue from a `UITableViewCell` to the other UIView, the segue did not work. I then noticed that the cell was not even registering any selection, and after trying different things for about 90 minutes, I realized that the parent `UITableView` had a single checkbox in the inspector: "User Interaction Enabled", which was unselected. No internet searches suggested looking here, but selecting it alone fixed the problem. Whether it was a default behavior of `UITableView` or I just accidentally messed up I have no idea, but I was very sad when I discovered the fix.

2. The last section of the tutorial, "Persist Data", entirely relies on the `NSKeyedArchiver` protocol, which is now largely deprecated as of iOS 12. Unfortunately, Apple did not produce any tutorials or recommendations on how to update it, so I could not interpret how to use the tutorial at all to persist data. Ultimately, I ended up breaking the content into three arrays and storing them individually in `UserDefaults`. It was fairly intuitive once I understood how they worked, but arriving at the conculsion to use `UserDefaults` was nonintuitive (thanks to [John Kotz](https://github.com/johnlev) for the suggestion).
