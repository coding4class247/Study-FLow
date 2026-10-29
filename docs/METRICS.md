https://docs.google.com/presentation/d/1HA2g-Mszlo82FDs6Hg8jQ5vruAcmKIMMH31-njBw7rY/edit?usp=sharing

Myke Yeskewicz - Happiness
  USER STORY CARDTitle: [Metrics(happiness)] Collect User Happiness & Satisfaction Data across Auth & Golden Path
Labels: metrics
Sprint: Sprint 2 Description:
As a Product Manager,
I want to collect user satisfaction ratings, feedback, and referral data during the signup/signin flow (Sprint 1) and the core Golden Path experience (Sprint 2),
So that we can measure user happiness, calculate CSAT/NPS, and identify areas to improve the overall application.Acceptance Criteria:

Targeted random surveys trigger appropriately after key Golden Path milestones.
In-app prompts for app store ratings display at optimal satisfaction moments.
Referral/sponsor program events (invites sent, conversions) are tracked in telemetry.
Data is logged to the analytics dashboard without degrading app performance.

PBI TASK CARDS (SPRINT 2)Task 1: In-App Targeted Survey Engine

Title: [Metrics] Implement targeted random user survey trigger & CSAT scoring
Labels: metrics
Sprint: Sprint 2
Assignee: [Team Member 1]
Description: Implement a randomized pop-up survey mechanism after a user completes the Golden Path to capture 1–5 star ratings and CSAT scores.
Acceptance Criteria:
Triggers for ~10–20% of users upon finishing a Golden Path task.
Captures numeric rating (CSAT) and optional qualitative feedback.
Sends event payload to the analytics database.   

Task 2: App Store / Platform Rating Prompt

Title: [Metrics] Integrate App Store rating prompt & platform feedback tracking
Labels: metrics
Sprint: Sprint 2
Assignee: [Team Member 2]
Description: Add native App Store / Play Store rating prompts for highly engaged users.
Acceptance Criteria:
Prompt appears after successful completion of the Golden Path (not on error/drop-off).
Logs whether the user rated, dismissed, or asked to be reminded later.   

Task 3: Referral & Sponsor Program Analytics

Title: [Metrics] Track Sponsor Program referral rates & user invite engagement
Labels: metrics
Sprint: Sprint 2
Assignee: [Team Member 3]
Description: Set up event logging for the user sponsor/referral program to track invite shares, successful signups via referral links, and referral satisfaction.
Acceptance Criteria:
Tracks referral_link_generated, invite_sent, and referral_signed_up.
Calculates NPS / Referral Rate metric in the analytics dashboard.   

Task 4: Recurring User & Retention Happiness Telemetry
Title: [Metrics (retention] Implement telemetry for recurring user satisfaction & sign-in frequency
Labels: metrics
Sprint: Sprint 2
Assignee: [Enmanuel Morillo]
Description: 
As a Product Manager,
I want to track how frequently students return to the application, complete study sessions, use Pomodoro timers, and manage their academic tasks,
So that we can measure user retention, identify engagement patterns, and determine whether students consistently use the app throughout the semester.

Acceptance Criteria:
the system tracks how many registered users open and interact with the application at least once per week.
The system tracks the number of Pomodoro timer sessions started and completed by each user.
The system records how many tasks users complete each week.
The system tracks when users manually add new tasks or upload additional academic materials.
Retention metrics are stored and made accessible through the analytics dashboard.
