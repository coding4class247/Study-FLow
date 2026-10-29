A/B Test Plan: Post-Golden Path CSAT Survey Format
A/B Test Name: CSAT Prompt Timing & Format (Single-Tap Star Rating vs. 2-Step Star + Feedback)
User Story Number: US2 / Task 1 (In-App Targeted Survey Engine)
Metrics (HEART Framework):
Happiness: This is based on Customer Satisfaction Score (CSAT), Survey Response Rate, Qualitative Feedback Completion Rate.
Retention: Post-survey user session continuation rate (ensuring survey prompt does not cause drop-offs).
Hypothesis
Problem: Users who complete the core Golden Path can drop out or dismiss lengthy survey pop-ups, leading to low response rates (~5–10%) and unrepresentative satisfaction metrics.
Root Cause & Bottleneck: Multi-step surveys present high cognitive friction immediately after a user completes a task.
Hypothesis: Switching from a 2-step prompt (Star Rating + Open Text Field) to a lightweight, single-tap 5-star rating prompt directly after Golden Path completion will increase survey response completion rates by 25% without impacting post-task user retention. This makes it easier to allow for users to give their opinion without it burdening the user. 
Experiment Details
Tooling: Firebase Remote Config & Firebase A/B Testing, tracked via Firebase Analytics (google-services.json / GoogleService-Info.plist).
Audience Allocation:
Target Population: 20% randomized sample of active users who trigger the golden_path_completed event in Sprint 2.
Split: 50% Control (10% total user base) and 50% Variant (10% total user base).
Firebase Analytics Tracking Setup:
survey_triggered (Custom Event): Fired when the survey overlay renders.
survey_completed (Custom Event): Fired upon submission, carrying user properties csat_score (1–5) and survey_variant (control_2step vs variant_1tap).
survey_dismissed (Custom Event): Fired if closed without rating.
Variations
Variation
Design & Workflow
Expected Outcome
Control (A)
2-Step Popup Modal: Shows 5 star buttons and an open comment text box with "Submit" and "Skip" buttons.
Baseline CSAT rating & detailed feedback, lower completion rate.
Variant (B)
Single-Tap Inline Banner: Bottom-sheet overlay with 5 interactive star icons. Tapping a star immediately logs the score and dismisses with a brief "Thanks!" toast.
Higher response rate, instant telemetry collection, zero navigation disruption.



