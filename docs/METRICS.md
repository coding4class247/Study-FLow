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

Alexander Bressan, Metric Card Title: Track workflow engagement: 
Label: Engagement Metris
Sprint: Sprint 2
Assignee: Alexander Bressan
Description: Collect and measure the interactions and engagement of the user by tracking use of scheduling tools, study/focus timers, and task completion.
Accepted Criteria: 
Track schedule setup and refinements
Track timer start, completion/cancelations, and task completion checks.
Measure engagement with study times and tool usage
   

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




-------------------------------------------------------------- Done by Gabriella Souder 

Gabriella Souder - Task Success
Title: [Metrics(task success)] Collect Task Success Data across Intake & Study Workflows Labels: metrics Sprint: Sprint 2 Description: As a Product Manager, I want to collect telemetry on syllabus uploads and task completion behaviors, So that we can measure if the app works as designed, verify students are successfully using the app to study, and track proxies for improved academic performance. Acceptance Criteria:

Event tracking logs the initiation, abortion, and successful completion of the syllabus capture/upload flow.
Task state changes (checked off/completed) are logged with timestamps compared against their stated deadlines.
Data is aggregated to calculate the ratio of on-time versus past-due tasks.
Data is logged to the analytics dashboard without degrading app performance.

PBI TASK CARDS (SPRINT 2)

Task 1: Capture/Upload (OCR) Flow TrackingTitle: [Metrics] Implement telemetry for syllabus capture and upload completion rate Labels: metrics Sprint: Sprint 2 Assignee: [Team Member 1] Description: Set up event logging to track when users initiate the syllabus capture/upload flow and measure the percentage of users who successfully have tasks generated without manually aborting the process.Acceptance Criteria:

Tracks intake_started, intake_aborted, and intake_successful events.
Calculates the completion percentage (successful vs. aborted) in the analytics dashboard.

Task 2: Priority Queue Deadline TrackingTitle: [Metrics] Track task completion percentage prior to deadline Labels: metrics Sprint: Sprint 2 Assignee: [Team Member 2] Description: Implement tracking for tasks generated in the priority queue to measure the exact percentage of tasks checked off as completed before their assigned deadline.Acceptance Criteria:

Logs task completion events alongside the respective task's due date.
Calculates the overall percentage of tasks completed on time across the active user base.

Task 3: Academic Proxy Ratio AnalyticsTitle: [Metrics] Calculate on-time vs. past-due task ratio Labels: metrics Sprint: Sprint 2 Assignee: [Team Member 3] Description: Aggregate the task completion telemetry to generate a rolling ratio of tasks completed before the due date versus tasks completed past the due date, serving as a quantifiable proxy for improved academic performance.Acceptance Criteria:

Dashboard logic calculates and displays the on-time vs. past-due ratio.
Properly categorizes and filters out tasks that are deleted rather than completed.

Task 4: Analytics Dashboard IntegrationTitle: [Metrics] Integrate Task Success metrics into primary backend dashboard Labels: metrics Sprint: Sprint 2 Assignee: [Team Member 4] Description: Connect the telemetry endpoints from the capture flow and priority queue to the main product analytics dashboard so the team can monitor Task Success health in real time.Acceptance Criteria:

All metrics from Tasks 1–3 populate correctly on the shared team dashboard.
Database queries for these metrics are optimized and do not impact app load times.

---------------------------------------Samuel Babbidge

Title: [Metrics (Adoption)] Implement telemetry to keep track of downloads, registration and feature use
Labels: metrics
Sprint: Sprint 2
Assignee: [Samuel Babbidge]
Description: 
As a Software Engineer,
I want to track the rate at which people download, sign up and use the features of the application. This will primarily 
be done for opening the app, signing in and creating a course. It will utilize firebase analytics such as app_open, login,
sign_up, create_course.



