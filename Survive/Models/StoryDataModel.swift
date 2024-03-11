//
//  StoryDataModel.swift
//  Survive
//
//  Created by Gustavo Vazquez on 2/17/24.
//
//  This file defines the structure and initial content for the story within the "Survive" app.
//  It establishes the narrative through chapters, each with unique titles, text, options for player decisions,
//  and associated images that enhance the storytelling experience.
//

import Foundation

/// Defines the narrative structure and initial content for the "Survive" app story.
/// The story is composed of chapters, each with its own title, narrative text, player decision options,
/// and associated imagery to enrich the storytelling experience.

// An array holding instances of `Chapter`, representing the storyline of the app.
let storyChapters = [
// Chapter 1 to ch 2 or 3
        Chapter(id: 1, chapterTitle: "The Awakening",
            text: """
                 A loud crash jolts you awake, your heart hammers in your chest as the remnants of sleep quickly dissipate. For a moment, you lay frozen, your ears straining against the silence that follows. The dim light of early dawn barely filters through your bedroom window, casting long shadows across the room. Blinking the grogginess away, you roll over to glance outside, expecting the familiar, comforting sight of your suburban neighborhood.

                Instead, what meets your eyes is a scene plucked from a nightmare. Through the thin veil of morning mist, you can make out the outlines of houses, eerily silent and seemingly abandoned. Plumes of smoke rise lazily from various points, blurring the line between the sky and the desolate landscape. It's a view that screams of desperation and chaos, so far removed from the mundane tranquility of your everyday life.

                Your mind races, trying to piece together the events that have led to this dystopian transformation. It's clear something catastrophic has occurred while you slept, blissfully unaware of the world crumbling around you. The reality of your situation sinks in, cold and heavy like a stone in your stomach. You're in the midst of a crisis, possibly alone, and survival is now your only priority.

                In the stillness of your room, you face a critical decision.
            """,
            options: [
        Chapter.Option(text: "Investigate the noise immediately, grabbing only your phone.", nextChapterID: 2),
        Chapter.Option(text: "Take a moment to gather a few essentials (flashlight, shoes, jacket) before investigating.", nextChapterID: 3)
            ],
            imageName: ["Chapter1BedroomAwake"]),
// Chapter 2 to ch 6 or 7
        Chapter(id: 2, chapterTitle: "Immediate Action",
            text: """
                 Phone in hand, you race downstairs, propelled by a mix of fear and the urgent need to understand the chaos that has enveloped your quiet neighborhood. The images you've seen from your window replay in your mind, a loop of smoke and desolation that seems too surreal to belong to your familiar streets. As you reach the bottom of the stairs, the reality of the situation crashes into you with the force of a physical blow.

                Approaching the living room, the scene that unfolds before you is one of sheer destruction. Through the large window that once offered a picturesque view of your front yard, you see a car, its front crumpled against the tree that has stood for decades. Flames lick the wreckage, casting an eerie light that dances across the walls of your home. It's clear from the devastation that this is no ordinary accident.

                Before you can process the scene fully, a loud bang against the window snaps your attention to the driver. What you see freezes the blood in your veins. The person—or what is left of them—is pounding on the glass with bloodied fists, their face a grotesque mask of injury and rage. Foam drips from the corners of their mouth, and their eyes... their eyes are devoid of any human recognition. It's as if the person you see is driven by something primal, something viciously non-human.

                In that heart-stopping moment, you realize the world you wake up to is fundamentally altered. The rules have changed overnight, and the nightmare you find yourself in is all too real. The creature at the window seems oblivious to the pain, its injuries, or the fire consuming the car behind it. Its focus is entirely on you, its intent horrifyingly clear.

                Faced with this immediate threat, you have to make a choice—and fast.
            """,
            options: [
        Chapter.Option(text: "Try to find a back exit and escape unnoticed.", nextChapterID: 6),
        Chapter.Option(text: "Search for a weapon to defend yourself.", nextChapterID: 7)],
            imageName: ["Chapter2CarCrash", "Chapter2Zombie"]),
// Chapter 3 to ch 4 or 5
       Chapter(id: 3, chapterTitle: "Preparedness Prevails",
               text: """
                    Your heart pounding against your chest, you quickly throw on a hoodie, its familiar weight offering a shred of comfort amidst the chaos. The fabric muffles your rapid breaths as you make your way downstairs, each step taken with careful silence. You know that staying hidden is paramount, the hoodie serving as a thin veil of invisibility against the horrors that await outside.

                    As you step into the living room, the full extent of the nightmare outside is laid bare before you. The car, now a twisted inferno in your front yard, casts an eerie, flickering light that paints everything in shades of orange and red. It's a scene ripped straight from a horror film, except this is no movie—this is real, and the danger is palpable.

                    Your gaze is drawn to the driver, or what remains of them. The figure is crawling out of the windshield, its movements jerky and unnatural. As it pulls itself free from the wreckage, the light reveals its true form—a creature from your darkest fears, its skin charred and peeling, eyes hollow with an insatiable hunger. A zombie, there's no other word for it, and it's right in front of your house.

                    Panic surges within you, a tidal wave threatening to sweep away the last vestiges of your calm. The reality of the situation crashes down on you with the force of a thousand bricks—you're in immediate danger, and you need to act fast.
               """,
               options: [
           Chapter.Option(text: "Quietly retreat and try to call for help.", nextChapterID: 4),
           Chapter.Option(text: "Look for another way out of the house, avoiding the creature.", nextChapterID: 5)],
               imageName: ["Chapter3WalkingDownStairs", "Chapter3ZombieInBurningCar"]),
// Chapter 4 to ch 6 or 7
       Chapter(id: 4, chapterTitle: "Calling for Help",
               text: """
                    With the decision made, you dart towards the cluttered confines of the closet under the stairs, the closest thing to a hiding spot on the ground floor. It’s cramped and dark, filled with forgotten coats and boxes, but it offers the illusion of safety, a temporary shelter from the chaos outside. Heart hammering in your chest, you dial 911, the phone's screen casting a pale light in the darkness. Your fingers are slick with sweat as you press the phone to your ear, listening to the ring that seems to echo too loudly in the small space.

                    Then, the response comes, not the voice of a dispatcher ready to send help, but a cold, automated message that chills you to the bone. "All lines are currently down. This is a National Emergency. All individuals are to immediately try to find their closest evacuation centers or stay inside, lock the doors and close all windows. Avoid contact with the infected at all costs." The message loops, a grim mantra that offers no comfort, only a stark reminder of the severity of the situation.

                    The words "National Emergency" and "infected" swirl in your mind, a toxic mix of fear and disbelief. The reality of the situation is undeniable now, and the urgency to act presses down on you with newfound weight. With the emergency broadcast offering no immediate hope of rescue, you're faced with another critical decision.
               """,
               options: [
           Chapter.Option(text: "Decide to leave through the back door and find help.", nextChapterID: 6),
           Chapter.Option(text: "Arm yourself with anything you can find and confront the creature.", nextChapterID: 7)], 
               imageName: ["Chapter4Dial911"]),
// Chapter 5 to ch 8 or 9
       Chapter(id: 5, chapterTitle: "A Stealthy Escape",
               text: """
                    The decision made, you extinguish the flashlight, plunging the living room into darkness once more. The absence of light feels like a cloak, wrapping around you, offering a fragile sense of security as you navigate through the familiar yet now foreboding space towards the kitchen. Each step is taken with painstaking care, avoiding the creaky floorboard, the scattered toys—anything that might betray your presence. The world outside has become a domain of predators, and you, the prey, must move with caution.

                    Reaching the kitchen, you allow yourself a moment to adapt to the dim light filtering through the windows. The back door, your hopeful escape route, stands before you, deceptively normal amidst the chaos. Memories of lazy Sunday barbecues and easy laughter filter through your mind, a stark contrast to the desolation that now grips your heart. You push these thoughts aside; nostalgia is a luxury you can no longer afford.

                    Your hand finds the door handle, cold and unyielding. You pause, listening intently. The silence that greets you is not comforting; it's a heavy, oppressive thing, filled with the potential for sudden violence. Yet, it's a chance you have to take. With a breath that feels like it might be your last, you slowly open the door, the hinges whispering softly.

                    Stepping out into the cool morning air, the shift from the stifling interior of your home to the open expanse of your backyard is jarring. The sky, a canvas of soft blues and pinks, belies the horror that unfolded under the cover of darkness. Dawn's light reveals a world unrecognizable, your neighbors' homes standing silent, doors ajar, gardens untended. It's as if life has been abruptly paused, the stillness a grim testament to the swift and merciless spread of the nightmare.

                    The blue car parked nearby, remembered from a more innocent yesterday, represents a sliver of hope—a possible escape from this madness. Yet, as your mind races through the possibilities, the fear of what might lurk between here and the vehicle, of what you might encounter on the roads, tempers the urge to run towards it.

                    On the other hand, going on foot offers a stealthier, albeit slower, option. The back path, a route you've taken countless times in better days, promises a way to avoid the main roads and the unknown horrors they might hold. But it also means exposing yourself to the elements, to the possibility of encountering those things with nowhere to hide.
               
                    The choice lays stark before you. Each option carries its own risks, its own potential for salvation or doom.
               """,
               options: [
           Chapter.Option(text: "Try to make it to your car and drive away.", nextChapterID: 8),
           Chapter.Option(text: "Go on foot, staying off the main roads.", nextChapterID: 9)], 
               imageName: ["Chapter5DarkLivingroom", "Chapter5FencedBackyard"]),
// Chapter 6 to ch 8 or 9
       Chapter(id: 6, chapterTitle: "The Back Door Route",
               text: """
                    Opting for caution over confrontation, you navigate carefully to the back of your house, your every movement calculated to avoid detection. You crouch low, mindful of the windows and the horrors they might reveal. The possibility of encountering those creatures, whose very existence defies all logic and understanding, propels you forward, each step a testament to your will to survive.

                    As you reach the back door, it stands before you not just as an exit, but as a threshold between the known and the unknown. Stepping outside, the change in temperature is immediate and refreshing, yet the cool morning air does little to calm your frayed nerves. The world around you is cloaked in an unsettling silence, a stark departure from the chaos that had erupted just hours before. The sight of black smoke rising in the horizon is a grim reminder that the nightmare is far from over; it's spreading, consuming everything in its path.

                    Despite the clear and present danger, an inexplicable feeling of being watched creeps over you, prickling the back of your neck. It's an instinctual, primal warning, urging you to remain vigilant, to trust no shadow nor any flicker of movement. This sensation only reinforces your decision to choose stealth over speed, to move with purpose but without drawing attention.

                    Faced with the decision to either make a beeline for your car, hoping for a swift and unnoticed escape, or to proceed on foot through the maze of backyards that make up your neighborhood, you weigh your options carefully.
               """,
               options: [
           Chapter.Option(text: "Head straight for your car, hoping it's a quick escape.", nextChapterID: 8),
           Chapter.Option(text: "Opt for stealth, planning to make your way on foot through the backyards of your neighborhood.", nextChapterID: 9)], 
               imageName: ["Chapter6LayingLow", "Chapter6Watched"]),
// Chapter 7 to ch 6 or 10
       Chapter(id: 7, chapterTitle: "Arming Yourself",
               text: """
                    With resolve hardening in your chest, you move swiftly through your home, your mind racing for solutions, for anything that might tip the scales in your favor. The world outside has become a landscape of nightmares, but you're not ready to succumb to despair. In the dim light of the hallway, your hands close around the familiar texture of a baseball bat tucked away in the back of a closet. Its weight is comforting, a tangible promise of defense in a suddenly hostile world.

                    Gripping the bat with both hands, you inch your way back toward the front of the house, every step measured, every breath a silent prayer. The creature, a twisted parody of humanity, is still outside, its grotesque form silhouetted against the backdrop of a world on fire. Its attention, mercifully, is not on your home but rather on something within the twisted wreckage of the crashed car. The smoke billowing into the sky paints everything in strokes of despair, but within this chaos, you spy a sliver of opportunity.

                    You stand at a crucial juncture, the weight of the bat in your hands a reminder of the choice you face. To sneak out the back would be to embrace the cautious path, to use the creature's distraction as your ticket to slip away unnoticed or the option to confront the creature head-on pulses with risk and potential reward. With the bat as your ally, you could seize control of the situation, could fight for your right to escape unharmed.
               
                    Your decision here is not just about survival; it's about the person you choose to be in the face of an apocalypse. Will you move silently, a ghost in the chaos, or will you confront the nightmare, a beacon of defiance in the dark? The path you choose now will echo in the steps you take hereafter.
               """,
               options: [
           Chapter.Option(text: "Take the opportunity to sneak out the back while it's distracted.", nextChapterID: 6),
           Chapter.Option(text: "Prepare to confront the creature, hoping to incapacitate it and escape.", nextChapterID: 10)], 
               imageName: ["Chapter7Bat", "Chapter7ZombieCar"]),
// Chapter 8 to ch 11 or 9
       Chapter(id: 8, chapterTitle: "The Drive to Safety",
               text: """
                    With the decision made, your resolve hardens into action. The baseball bat, though a meager comfort against the unknown horrors outside, is left behind as you sprint towards your car. Your hands shake slightly as you unlock it, the familiar beep and flash of the headlights momentarily piercing the surreal nightmare enveloping your neighborhood. Slipping inside, you take a moment to breathe, to center yourself before you turn the key in the ignition. The engine roars to life, a sound that pierces the silence like a beacon of hope. You've never been more grateful for the reliability of your vehicle.

                    As you pull out of your driveway, the scale of the catastrophe unfurls before you with each turn of the wheels. The streets, once avenues of mundane daily life, are now stages for a horror show you never imagined could be real. Dead bodies, some human, others less identifiable, dot the landscape, painting a grim picture of the night's events. Creatures—zombies, your mind supplies despite the incredulity of the thought—wander with a grotesque lack of purpose, their presence an undeniable sign of the world's descent into madness.

                    The radio, set to the emergency frequency, crackles with static, the voice of the announcer strained but urgent, repeating instructions to head to the nearest evacuation center. The reality of your situation settles in with every passing mile; the world as you knew it has crumbled in the span of a night.

                    Now, as you navigate the debris-strewn streets, a choice presents itself, demanding immediate attention. You could attempt to drive through, weaving around the abandoned cars, the bodies, and the aimlessly wandering creatures. It’s a risk, with the potential to get blocked or worse, attract the attention of those things with the noise of your car or you abandon the car at the first sign of trouble looms as a cautious strategy. On foot, you might move more quietly, avoid drawing attention, and navigate obstacles the car cannot.
               """,
               options: [
           Chapter.Option(text: "Try to drive through, avoiding the creatures and obstacles.", nextChapterID: 11),
           Chapter.Option(text: "Abandon the car at the first sign of trouble and proceed on foot.", nextChapterID: 9)], 
               imageName: ["Chapter8Driving"]),
// Chapter 9 to ch 12 or 13
       Chapter(id: 9, chapterTitle: "The Path Less Travelled",
               text: """
                    With the car abandoned behind, its safety and speed relinquished for the sake of stealth, you step cautiously into the unknown. The backyards of your neighborhood, once scenes of barbecues and laughter, now serve as your makeshift pathway to salvation. The eerie silence that accompanies your journey is punctuated only by distant screams and the unsettling sounds of a world in chaos. It's a stark reminder of the reality you're desperately trying to survive.

                    You're guided by the singular goal of reaching the evacuation center, a beacon of hope in the madness that has engulfed your world. The decision to travel on foot, while fraught with danger, feels right—a silent testament to the human will to survive against all odds. Each step is measured, each breath calculated, as you navigate through the labyrinth of backyards, always alert for any sign of the creatures that have claimed your once peaceful suburb.

                    As the journey stretches on, you're faced with a critical decision. Ahead lies a park, a shortcut that promises to cut your travel time significantly. Its dense foliage offers potential hiding spots, yet the open spaces leave you vulnerable to detection. Alternatively, the longer route through additional residential areas presents itself as a safer option. It's a path that meanders, extending your journey but offering the relative safety of more houses to hide in, more fences to put between you and the dangers lurking in the open.
               """,
               options: [
           Chapter.Option(text: "Take the shortcut through the park, risking exposure for speed.", nextChapterID: 12),
           Chapter.Option(text: "Choose the longer route, prioritizing stealth over speed.", nextChapterID: 13)], 
               imageName: ["Chapter9Backyards"]),
// Chapter 10 to ch 8 or 9
       Chapter(id: 10, chapterTitle: "Confrontation",
               text: """
                    Adrenaline courses through your veins as you grip the baseball bat with both hands, the door before you barely ajar. The creature, oblivious to your presence, presents its back to you—a target unwitting and unaware. You draw in a deep, steadying breath, the weight of your decision anchoring you for the briefest of moments before action takes over thought.

                    With a surge of resolve, you push the door open wider and charge. The bat, an extension of your determination, arcs through the air with a force borne of desperation. The impact resonates, a sickening thud that seems too loud, too real. The creature is sent sprawling, a testament to your surprise attack. Yet, as it begins to rise, an unnerving resilience in its movements, the stark reality of your situation crystallizes in your mind. Fighting might hold the illusion of control, but survival, true survival, means knowing when to flee.

                    Seizing the fleeting opportunity, you pivot on your heel, the decision to run crystallizing with clarity. The back door, once a mere exit, now symbolizes a lifeline to the uncertain sanctuary of the outside world. You don't look back as you burst through, leaving the creature—and the semblance of your former life—behind.

                    The open air hits you, a jarring contrast to the stifled atmosphere you've just escaped. Ahead lies the decision that could define your fate: the car or the cover of backyards and alleys.
               """,
               options: [
           Chapter.Option(text: "Head for your car, hoping to make a quick getaway.", nextChapterID: 8),
           Chapter.Option(text: "Opt to escape on foot, using the cover of backyards and alleys.", nextChapterID: 9)], 
               imageName: ["Chapter10Attack"]),
// Chapter 11 to ch 14 or 15
       Chapter(id: 11, chapterTitle: "Road to Peril",
               text: """
                    The desolation of the streets weighs heavily on your shoulders as you navigate the maze of abandoned vehicles and debris. Your heart races, a relentless drumbeat echoing the urgency of your escape. Around you, the creatures—disoriented and erratic—loom like shadows, their presence a constant reminder of the world's descent into chaos.

                    With the evacuation center within reach, a beacon of hope amidst the despair, the streets become increasingly congested, a testament to the desperation of those who had sought escape before you. The creatures, drawn by the noise and commotion of your passage, grow more numerous, a seemingly insurmountable barrier between you and salvation.

                    In a moment fraught with desperation, the realization hits: the car, your fleeting sanctuary, can no longer serve its purpose. The road ahead, choked with obstacles and teeming with danger, forces your hand. Abandoning the car, you step into the open, the evacuation center's promise of safety a mere whisper against the cacophony of the apocalypse.

                    Now, with the journey ahead demanding stealth and resolve, you face a pivotal decision. Continuing on foot or attempt commandeering another vehicle.
               """,
               options: [
           Chapter.Option(text: "Continue on foot, keeping to the shadows as much as possible.", nextChapterID: 14),
           Chapter.Option(text: "Search for another vehicle to commandeer, risking the noise to cover more ground quickly.", nextChapterID: 15)], 
               imageName: ["Chapter11RoadBlock"]),
// Chapter 12 to ch 16 or 13
       Chapter(id: 12, chapterTitle: "Shortcut Through the Park",
               text: """
                    The decision for speed propels you into the park, its paths now shadowed corridors in the dim light of dawn. Each whisper of movement in the underbrush sends a jolt of fear through you, the once peaceful setting transformed into a landscape of trepidation. Despite the unease, you press forward, driven by the singular goal of reaching the evacuation center that stands as a beacon of hope in the chaos.

                    The park, with its sprawling expanse, offers a deceptive sense of freedom, the open spaces now arenas for the unexpected. Your pace quickens, every sense heightened, as you navigate through the familiar yet now alien terrain.

                    However, as you round the final corner, a scene of devastation halts your progress. The ground before you tells a silent tale of a last, desperate stand—a group of survivors, much like yourself, whose journey ended in tragedy. Their bodies, strewn across the path, paint a grim picture of the reality of this new world. Amidst the stillness, the creatures meander, a grotesque mirror of life as it once was. Then, the chilling realization dawns on you: their aimless wandering shifts, their attention slowly turning towards the lone figure in their midst—towards you.

                    Panic tightens its grip as you weigh your options. Do you muster the courage to run past these creatures, relying on your speed and their confusion to carry you through? Or do you take a step back, retreating into the unknown in search of another way around, leaving the deceptive safety of the park behind?
               """,
               options: [
           Chapter.Option(text: "Try to run around them, using your speed to your advantage.", nextChapterID: 16),
           Chapter.Option(text: "Retreat and look for another way around, even if it means leaving the park.", nextChapterID: 13)], imageName: ["Chapter12Park"]),
// Chapter 13 to 17
       Chapter(id: 13, chapterTitle: "The Long Way Round",
               text: """
                    Choosing the path of caution, you quickly retreat from the park's edge, the decision weighing heavy but clear. The residential streets, eerily silent and desolate, stretch before you, a maze of once-familiar paths now laden with the unknown. Each step is measured, a quiet dance between the safety of shadows and the need for progress. Behind you, the distant glow of fire casts a somber light on the park you left behind, a stark reminder of the chaos that has engulfed your world.

                    The journey is longer, each turn a calculated risk, but your caution pays off. The gardens and backyards of abandoned homes provide a patchwork of cover, allowing you to weave your way through the neighborhood with a cautious stealth. The absence of those creatures, coupled with the eerie silence, grants you a fragile sense of security, a brief respite in a world turned upside down.

                    As you navigate the labyrinth of streets, the evidence of hurried evacuations and sudden, violent ends paints a grim picture of the day's events. Abandoned cars, hastily packed belongings scattered in the streets, doors left ajar in the rush to escape—each tells a story of panic and desperation.

                    Finally, after what feels like hours, the evacuation center comes into view. The sight of it—a sprawl of makeshift tents and barricades erected in the haste of emergency—stands as a beacon of hope amid the desolation. What was once an inactive military base now buzzes with activity, a temporary haven for those fortunate enough to have made it this far. The sight of armed guards and survivors moving about the camp brings a wave of relief, the promise of safety at last within reach.

                    Your heart pounds with a mixture of exhaustion and anticipation as you approach the perimeter. The choice to approach the center directly, to finally step into the embrace of safety and civilization, is a simple one. Yet, it is not without its own set of fears. After all you've witnessed, the idea of safety feels almost foreign, a concept as fragile as the peace that once governed your days.
               """,
               options: [
           Chapter.Option(text: "Approach the center directly, eager to find safety.", nextChapterID: 17)],
               imageName: ["Chapter13LongRoute", "Chapter13MilitaryBase"]),
// Chapter 14 to 17
       Chapter(id: 14, chapterTitle: "Final Stretch on Foot",
               text: """
                    With the evacuation center tantalizingly close, you abandon the relative safety of your car, stepping into a world overrun by chaos. Each step forward is a silent prayer, a hope that luck remains on your side. The creatures, their numbers swelling like a dark tide, roam with a restless hunger, drawn to the center as moths to a flame.

                    The center looms ahead, a fortress amid the storm, its presence both a beacon of hope and a stark reminder of the desperation that has gripped the world. You keep to the shadows, moving with a purpose, your heart a steady drumbeat echoing in your chest. The closer you get, the more daunting the task appears; the creatures encircle the center, a living barrier between you and safety.

                    Determination sets in, hard and unyielding. You decide to find an unguarded entry, knowing full well the risk involves circling the complex, exposing yourself to untold dangers. Yet, the alternative—remaining outside, vulnerable and alone—is not an option. With cautious steps, you begin the perilous journey around the perimeter, each moment stretching into eternity.

                    The creatures' moans fill the air, a constant reminder of the thin veil between life and death. You duck behind abandoned vehicles, slip through narrow alleyways, and press yourself flat against walls, anything to remain unseen, unheard. The evacuation center, with its promise of safety, seems both infinitely close and hopelessly far.
               """,
               options: [
           Chapter.Option(text: "Try to find an unguarded entry, even if it means circling the entire complex.", nextChapterID: 17)], imageName: ["Chapter14OnFoot", "Chapter14BaseSurrounded"]),
// Chapter 15 to ch 17 or 14
       Chapter(id: 15, chapterTitle: "A Risky Gamble",
               text: """
                    With the desperation of the moment fueling your decision, you opt for the risky endeavor of finding another vehicle. The abandoned streets whisper tales of hurried escapes and tragic ends. It's in this somber setting that you stumble upon an abandoned police cruiser, its doors ajar, inviting you to a sliver of hope. The discovery of the keys, still hanging in the ignition as if left for you by fate itself, sends a surge of adrenaline through your veins. With a deep breath, you turn the key, and the cruiser springs to life, its engine's roar a defiant cry against the quiet despair of the city.

                   The police cruiser, with its authoritative presence, seems to part the sea of creatures, their attention momentarily swayed by the vehicle's sudden intrusion. You're faced with a critical decision: drive straight to the evacuation center, using the cruiser's robust build and momentum to forge a path, or employ a more cunning strategy, using the cruiser's loudspeaker to draw the creatures away, sacrificing your newfound mobility for a safer approach on foot.

                   The weight of the decision bears down on you, the safety of the evacuation center within tantalizing reach, yet so much depends on this next move. The thought of driving straight through, barreling past any obstacle, is tempting. The cruiser is a formidable machine, capable of withstanding much, but the unpredictability of the creatures and the potential for unforeseen barriers loom large in your mind.

                   On the other hand, the loudspeaker presents a novel opportunity. The idea of using the cruiser as a decoy, to lead the creatures away from the evacuation center, is a gamble. It would mean abandoning the safety and speed of the vehicle, relying instead on your ability to navigate the last stretch on foot. Yet, this strategy offers a chance to reduce the threat level significantly, not just for yourself but for others trying to reach the haven.
               """,
               options: [
           Chapter.Option(text: "Drive straight to the evacuation center, using the car's momentum to get through.", nextChapterID: 17),
           Chapter.Option(text: "Use the car's loudspeaker to attract the creatures away from the center, sacrificing the vehicle for a safer approach on foot.", nextChapterID: 14)], 
               imageName: ["Chapter15PoliceCruiser", "Chapter15PoliceDriving"]),
// Chapter 16 to 17
       Chapter(id: 16, chapterTitle: "A Desperate Sprint",
               text: """
                    With resolve steeling your nerves, you choose action over hesitation, propelling yourself forward with a burst of speed that slices through the heavy air. The creatures, caught off guard by your sudden movement, are slow to give chase, their groans fading into the background as you put distance between them and yourself. The park, with its dense foliage and shadowed paths, becomes a blur of green and gray as you navigate its terrain with a single-minded focus: escape.

                    Your lungs burn with the exertion, each breath a fiery reminder of your desperate sprint for survival. Yet, the fear of what lies behind propels you faster, pushing you beyond limits you never knew you had. The sounds of pursuit grow fainter, a testament to the widening gap between you and the relentless horde.

                    As you burst from the confines of the park, the world opens up before you, the evacuation center a beacon on the horizon. The realization hits you with the force of a tidal wave; you're so close now, the culmination of your harrowing journey almost within grasp. The thought of slowing down, of returning to the shadows and the stealth that has so far kept you safe, is quickly dismissed. Caution has served its purpose, but now, with the finish line in sight, hesitation is a luxury you can no longer afford.

                    With renewed vigor, you charge towards the evacuation center, your every step fueled by a mix of adrenaline and sheer willpower. The obstacles that lie in your path—abandoned cars, debris, the occasional lost soul turned predator—are mere hurdles in your race for life. You navigate them with a dexterity born of desperation, leaving them behind as you close the distance to your sanctuary.

                    The center looms larger with every step, its makeshift barriers and guarded perimeters a welcome sight. You can see figures moving about, survivors and soldiers alike, all united in their fight against the chaos that has consumed the world. Your heart pounds, not just from the exertion, but from the realization that you are about to cross into safety, to join others who have survived the nightmare.
               """,
               options: [
           Chapter.Option(text: "Head straight for the evacuation center, no longer caring for stealth.", nextChapterID: 17)], 
               imageName: ["Chapter16Sprint"]),
// Chapter 17 CURRENT ENDING
       Chapter(id: 17, chapterTitle: "Arrival",
               text: """
                    The evacuation center stands as a fortress of hope, its gates a threshold between despair and salvation. As you draw closer, the sight of the military's disciplined presence brings a wave of relief. The world beyond these walls may have succumbed to chaos, but here, order prevails. Soldiers, their faces set in determination, work tirelessly to guide survivors to safety, a testament to humanity's resilience.

                    You step through the gates, leaving behind the pandemonium that has consumed your life. The transition is jarring, the sounds of chaos replaced by the buzz of activity that speaks of life continuing against all odds. Inside, the evacuation center is a hive of activity. Families, torn apart by disaster, embrace in tearful reunions. Medical tents dot the landscape, beacons of healing where the wounded and weary receive care. Soldiers patrol the grounds, their vigilant eyes a reminder that, even here, safety is hard-won.

                    As you navigate through the crowd, the weight of your journey settles upon you. The fear, the desperation, the moments when survival seemed an impossible dream—they're all behind you now. But the end of your journey marks the beginning of something else, something bigger than any one person's struggle for survival. Here, in this makeshift community, the fight goes on. Not just to survive, but to rebuild, to reclaim the world from the shadows that have overtaken it.

                    For now, you are safe. The evacuation center, with its canvas tents and constant activity, is a haven in a world turned upside down. But as you look around, taking in the faces of those who have endured, who continue to endure, you understand that this is but a brief respite. The world outside the center's walls has been irrevocably altered, its familiar landscapes now alien territories to be navigated with caution and courage.

                    The question of what comes next hangs in the air, unspoken yet palpable. How does one rebuild in the aftermath of such devastation? Where do you go when the places you called home no longer exist, or have become battlegrounds in a fight for survival? These are questions without easy answers, but in the company of fellow survivors, there is a glimmer of hope. Together, there is strength, a collective will to forge a path forward, to create light in the darkness.

                    As the sun sets, casting long shadows over the evacuation center, you find a spot among the others. Around you, life goes on—children laugh, people share stories, and plans are made for the days ahead. In this moment of calm, you allow yourself to believe in the possibility of a future, a world rebuilt from the ashes of the old.

                    The end of your journey may mark the conclusion of this chapter, but it is not the end of the story. It is a pause, a moment to catch your breath before facing the challenges that lie ahead. The world outside waits, its landscapes forever changed, but not beyond hope. For now, you are safe, and in that safety, there is the promise of a new dawn.

                    The End... for now.
               """,
               options: [],
               imageName: ["Chapter17MilitaryBaseArrival"])
    
// Template for adding more chapters. 
// This section illustrates how to add additional chapters to the story.
/*
//Chapter X: 
       Chapter(id: X, chapterTitle: "Title Here",
               text: """
                    // Narrative text for Chapter X.
                    """,
               options: [
                   // Options leading to different paths or chapters based on player choices.
                   Chapter.Option(text: "Option 1 text.", nextChapterID: Y),
                   Chapter.Option(text: "Option 2 text.", nextChapterID: Z)
               ],
               imageName: ["ImageName1", "ImageName2"]), // Associated images for Chapter X.
    */
]

/// Retrieves a chapter from the story by its unique identifier.
/// - Parameter id: The unique identifier for the desired chapter.
/// - Returns: An optional `Chapter` instance. If a chapter with the specified ID exists, it is returned; otherwise, `nil` is returned.
func chapterByID(_ id: Int) -> Chapter? {
    return storyChapters.first { $0.id == id }
}
