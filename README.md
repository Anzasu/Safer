Walkthrouh Video:  
https://youtu.be/r_c4O9-_jJQ

# Inspiration
The crime rate is still very high nowadays. Kidnappings, rapes, robberies, molestations, ...
Children and women, who often travel alone, are particularly often affected.

My app should help to be safer on the road and in an emergency to quickly call acquaintances or the emergency services. 
And if the Uber should be suspicious, you can quickly send your location to friends and family.

# What it does
The app has 3 main functions:
- Call contact
- Send location
- Emergency call

To call a contact, first set up to 4 numbers in the settings that belong to people you can call in case of emergency. Then you can easily select one of them without having to search for it in a stack of other contacts.

To make an emergency call, you must first set up the emergency numbers in the settings. Since each country has its own numbers, each user has to set them up individually.

If you choose to send your location, you have the option to send your coordinates to all saved contacts via SMS as soon as you click on the button. Since the app is meant to be available to everyone, I didn't choose to send via WhatsApp or any other messenger because:
1. not everyone always has access to the internet when they are away from home and.
2. not everyone uses the same messenger. But everyone already has the SMS messenger built in.

#Design
Before I started with the implementation, I first planned the UI.

Since this is a project for the track social justice, I had to make sure that as many people as possible are able to use the app comfortably
In general, I kept the design very simple. This ensures that the user, even in stressful situations, quickly finds the right function and is not confused by complicated design.

I will also attach some photos of the planning so that it conveys the idea better.
The app logo was created with the Stable Diffusion AI.

##Color palette
I chose a warm dark green as the color base and and created a palette through lighter gradations. 
Green is considered calming. For an app that is probably only opened in stressful situations, gaudy colors like red and yellow would only be counterproductive.

To make other elements stand out from the background, I intentionally did not include other colors in the palette, but only used gradations of the chosen green. This way, even color-blind people can handle the app well, since the design is based more on contrast, than on color.

## Buttons, text, icons, etc.

To ensure that older people, people with poor eyesight and illiterate people can also benefit from the app, I have tried to use as little text as possible. Icons were used for this purpose. The remaining text was written relatively large and in a plain font.

# Implementation
For the implementation I used the language dart and the framework flutter.

While programming, I often had to change the initial design, because it makes my code unnecessarily more complicated, but not more efficient, or because I don't know how to implement it with my current knowledge.

# Challenges I ran into
The first challenge was to get into the world of app programming and to learn flutter and dart. 
I have never programmed an app before, so I had to learn it especially for this hackathon.
However, already having advanced experience in OOP and Java helped me a lot.

Forced some problems with importing packages into flutter, I was not able to implement the function to call and send SMS (SOLVED). When clicking on the corresponding buttons, it is not possible to make a call or send the location (SOLVED).
Instead, a snack bar appears with a corresponding error message.

#What we learned
Especially how apps are programmed with Flutter, but also a lot about app design and the many aspects that have to be considered (colour, font style, font size, etc.).

# What's next for Safer
After implementing the method to save the contact data locally and adding the final touches, the app will hopefully enter the testing phase. With the help of the testers' feedback, possible bugs will be eliminated and the app will be made public for everyone.

# Photos
The app logo was made with the help of getimg-Art Generator. Here is a referral link: https://getimg.ai/ref/6CdSz7C3x
![icon_safer](https://user-images.githubusercontent.com/109875028/205458295-5ac5810d-a513-4d29-9dc9-b0bcf4d06e02.png)
![Hompage_initial](https://user-images.githubusercontent.com/109875028/205458312-ab8151ff-1ba9-4f55-89d8-3cd7589581e7.JPG)
![Emergency_Call_initial](https://user-images.githubusercontent.com/109875028/205458332-47d15936-6a62-4630-a0bb-89e97df5b4e9.JPG)
![Call_Contact_initial](https://user-images.githubusercontent.com/109875028/205458341-3ebd0375-ab35-4e54-bb90-af4eccc9f9c9.JPG)
![Settings_initial](https://user-images.git![Edit_Contact_initial](https://user-images.githubusercontent.com/109875028/205458350-33ca2e95-d825-4d8a-a002-cd37b8671b08.JPG)
hubusercontent.com/109875028![Edit_Emergency_initial](https://user-images.githubusercontent.com/109875028/205458352-30d514c1-6c9b-47b8-9d17-90815fa64a4b.JPG)
/205458325-a9141f56-0b42-4875-9644-e45a26b0245d.JPG)





