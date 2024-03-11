//
//  EndView.swift
//  Survive
//
//  Created by Gustavo Vazquez on 2/27/24.
//
//  This view displays the content of the post-end chapter in the "Survive" story,
//  including text, images, and option for the player to return to WelcomeView().
//

import SwiftUI

/// Represents the concluding view of the "Survive" app, showcasing the end of the journey and offering a path to restart.
struct EndView: View {
    @AppStorage("fontSize") private var fontSize: Double = 20 // User's preferred font size stored persistently.

    var body: some View {
        ZStack {
            // Background setup for the entire view.
            AppColors.mainBackgroundColor.ignoresSafeArea()
            
            VStack {
                // Title for the end scene.
                Text("The Fragile Haven")
                    .font(.system(size: fontSize + 8))
                    .foregroundColor(AppColors.mainFontColor)
                
                ScrollView {
                    // Introductory image for the end content.
                    Image("EndViewImage")
                        .resizable()
                        .scaledToFit()
                    
                    // Concluding narrative text.
                    Text("""
                            As the dust settles on a day that has stretched the limits of your endurance, the evacuation center becomes a bubble of fragile normality in a world turned upside down. The military presence, the organized distribution of food and supplies, the medical tents—all paint a picture of stability, a semblance of the order that used to govern your life. Yet, beneath the surface, there's an undercurrent of tension, a collective holding of breath.

                            You find yourself unable to fully relax, the sense of safety an ill-fitting garment that you're not quite used to wearing. The scenes of the day replay in your mind, a relentless reminder of how quickly life can spiral into chaos. You've seen firsthand the devastation that the infected can wreak, the speed at which society can crumble. And now, surrounded by the weary but hopeful faces of fellow survivors, you can't shake the feeling that this haven is but a temporary reprieve.

                            The soldiers, despite their disciplined facade, carry the weight of vigilance in their eyes. They know, as do you, that it only takes one unnoticed infected, one breach in their defenses, to turn this sanctuary into a nightmare. The perimeter checks, the constant patrolling—all necessary measures, yet they also serve as a reminder of the precariousness of this peace.

                            As night falls, the center quiets down, the day's tumult giving way to an uneasy stillness. Lying awake in the communal sleeping area, you listen to the sounds of the night, each creak and rustle a potential harbinger of danger. The reality of your situation settles heavily upon you; this evacuation center, for all its promise of safety, is but a small island in a sea of uncertainty. The world beyond its fences remains a hostile wilderness, reclaimed by chaos and the shadow of infection.

                            Conversations you overhear among the survivors echo your own fears. There's talk of what comes next, of plans to move to more secure locations, of rumors of other safe zones far from the reach of the infected. But these plans are tempered by the knowledge that the road ahead is fraught with peril. The journey to safety is not merely a physical one but a constant battle against despair, against the fear that the next day might bring the downfall of this last bastion of hope.

                            In the quiet of the night, as you finally drift toward sleep, you resolve to keep your guard up, to remember that survival is not a destination but a continuous journey. The evacuation center has given you a reprieve, a chance to catch your breath, but the fight for survival is far from over. It's a fight that demands vigilance, resilience, and the understanding that the line between safety and danger is perilously thin.

                            The dawn of a new day brings no promises, only the certainty of uncertainty. But within the fragile walls of this haven, you've found something worth fighting for: a glimmer of hope, a community of survivors, a shared determination to rebuild from the ashes of the old world. And perhaps, in the end, that's what matters most.
                         """)
                       .font(.system(size: fontSize))
                       .foregroundColor(AppColors.mainFontColor)
                       .padding()
                   
                       // Secondary image to complement the narrative.
                       Image("EndViewImage2")
                           .resizable()
                           .scaledToFit()
                       
                       // Navigation link to restart the journey.
                    NavigationButton(destination: WelcomeView(),
                                     buttonText: "Return to Main Menu",
                                     fontSize: fontSize,
                                     backgroundColor: AppColors.pickChoiceBackgroundColor)
                    
                    .padding(.top, 20) // Additional spacing above the restart link.
                }
            }
        }
    }
}

#Preview {
    EndView()
}
