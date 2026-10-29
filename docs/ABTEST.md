# A/B Test Plan: Post-Golden Path CSAT Survey Format

**A/B Test Name:** CSAT Prompt Timing & Format (Single-Tap Star Rating vs. 2-Step Star + Feedback)

**User Story Number:** US2 / Task 1 (In-App Targeted Survey Engine)

## Metrics (HEART Framework)

- **Happiness:** Customer Satisfaction Score (CSAT), Survey Response Rate, Qualitative Feedback Completion Rate.
- **Retention:** Post-survey user session continuation rate (ensuring survey prompts do not cause drop-offs).

## Hypothesis

**Problem:** Users who complete the core Golden Path can drop out or dismiss lengthy survey pop-ups, leading to low response rates (~5–10%) and unrepresentative satisfaction metrics.

**Root Cause & Bottleneck:** Multi-step surveys present high cognitive friction immediately after a user completes a task.

**Hypothesis:** Switching from a 2-step prompt (Star Rating + Open Text Field) to a lightweight, single-tap 5-star rating prompt directly after Golden Path completion will increase survey response completion rates by 25% without impacting post-task user retention. This makes it easier for users to give their opinion without burdening them.

## Experiment Details

**Tooling:** Firebase Remote Config & Firebase A/B Testing, tracked via Firebase Analytics (`google-services.json` / `GoogleService-Info.plist`).

### Audience Allocation

- **Target Population:** 20% randomized sample of active users who trigger the `golden_path_completed` event in Sprint 2.
- **Split:** 50% Control (10% total user base) and 50% Variant (10% total user base).

### Firebase Analytics Tracking Setup

- **`survey_triggered` (Custom Event):** Fired when the survey overlay renders.
- **`survey_completed` (Custom Event):** Fired upon submission, carrying event parameters `csat_score` (1–5) and `survey_variant` (`control_2step` vs. `variant_1tap`).
- **`survey_dismissed` (Custom Event):** Fired if closed without rating.

## Variations

| Variation | Design & Workflow | Expected Outcome |
|---|---|---|
| **Control (A)** | **2-Step Popup Modal:** Shows 5 star buttons and an open comment text box with "Submit" and "Skip" buttons. | Baseline CSAT rating and detailed feedback, lower completion rate. |
| **Variant (B)** | **Single-Tap Inline Banner:** Bottom-sheet overlay with 5 interactive star icons. Tapping a star immediately logs the score and dismisses with a brief "Thanks!" toast. | Higher response rate, instant telemetry collection, zero navigation disruption. |

# A/B Test Plan: Smart Priority Queue Reminders & User Retention

**A/B Test Name:** Smart Priority Queue Engagement (Standard Dashboard vs. Personalized Study Reminders)

**User Story Number:** Retention – US2 / Task 1 (Weekly Active User Tracking)

## Metrics (HEART Framework)

**Retention:**
- Weekly Active Users (WAU)
- 7-Day User Retention Rate
- 30-Day User Retention Rate
- Weekly Return Frequency

**Engagement:**
- Smart Priority Queue interactions per week
- Pomodoro timer sessions started and completed
- Weekly task completion rate

## Hypothesis

**Problem:** Students may stop using the application consistently after completing their initial profile setup. Without reminders or encouragement, users may forget to check their Smart Priority Queue, complete tasks, or use the Pomodoro timer.

**Root Cause & Bottleneck:** Students have busy academic schedules and may not remember to regularly open the application. Without personalized reminders, students may return to using other methods to manage their assignments and study sessions.

**Hypothesis:** Introducing personalized study reminders based on upcoming assignments and incomplete tasks will increase 7-day user retention by at least 15% relative to the standard dashboard experience without decreasing task completion rates.

This would encourage students to build a consistent habit of using the application throughout the semester.

## Experiment Details

**Tooling:** Firebase Remote Config & Firebase A/B Testing, tracked through Firebase Analytics.

**Audience Allocation:**

- **Target Population:** 20% randomized sample of active users who have completed their initial profile setup during Sprint 2.
- **Split:** 50% Control (10% of eligible users) and 50% Variant (10% of eligible users).
- **Assignment:** Users remain in their assigned group throughout the experiment.
- **Duration:** Minimum of 30 days to evaluate both short-term and long-term retention.

### Firebase Analytics Tracking Setup

| Event Name | Description |
|---|---|
| `profile_setup_completed` | Triggered when a student finishes setting up their profile. |
| `app_open` | Tracks when users return to the application. |
| `priority_queue_viewed` | Triggered when users access their Smart Priority Queue. |
| `study_reminder_sent` | Tracks when a personalized study reminder is delivered. |
| `study_reminder_opened` | Tracks when users open the application through a reminder. |
| `pomodoro_started` | Triggered when a user begins a Pomodoro study session. |
| `pomodoro_completed` | Triggered when a user finishes a Pomodoro study session. |
| `task_completed` | Triggered when a student completes an academic task. |

**User Properties / Experiment Parameters:**
- `retention_variant`: `control_standard` or `variant_reminders`
- `experiment_group`: Control A or Variant B

## Variations

| Variation | Design & Workflow | Expected Outcome |
|---|---|---|
| **Control (A)** | Standard Dashboard: Students manually open the application to check upcoming assignments, manage their Smart Priority Queue, and start Pomodoro study sessions. No additional personalized reminders are sent. | Establishes baseline retention and engagement rates. |
| **Variant (B)** | Personalized Study Reminders: Students receive reminders about upcoming deadlines, incomplete tasks, and suggested study sessions based on their Smart Priority Queue. Users can open the application directly from the reminder. | Higher weekly engagement, more frequent app returns, and improved 7-day and 30-day retention. |

## Success Metrics

### Primary Metric: 7-Day User Retention

Measure the percentage of eligible users who return and interact with the application on day 7 after completing their initial profile setup.

**Formula:**

`7-Day Retention Rate = (Users Active on Day 7 / Eligible Users in Cohort) × 100`

**Success Criteria:**
- Variant B achieves at least a 15% relative increase in 7-day retention compared with Control A.

### Secondary Metric: Weekly Active Users

Measure the percentage of registered users who actively interact with the application at least once per week.

**Formula:**

`Weekly Active User Rate = (Unique Active Users During Week / Total Registered Eligible Users) × 100`

**Success Criteria:**
- Variant B demonstrates higher weekly engagement than Control A.

### Secondary Metric: 30-Day Retention

Measure the percentage of users who return and interact with the application on day 30 after completing their initial profile setup.

**Success Criteria:**
- Variant B maintains or improves 30-day retention compared with Control A.

### Secondary Metric: Study Session Engagement

Measure the average number of Pomodoro timers started and completed per active user each week.

**Success Criteria:**
- Variant B demonstrates increased study session engagement without reducing completion rates.

## Experiment Evaluation

At the end of the experiment, compare both groups using Firebase Analytics.

**Questions to Evaluate:**

1. Did students receiving personalized reminders return to the application more frequently?
2. Did reminders increase interactions with the Smart Priority Queue?
3. Did students receiving reminders complete more study sessions and academic tasks?
4. Was there an improvement in 7-day and 30-day retention?
5. Did reminders create notification fatigue or negatively affect engagement?

**Final Decision:**

If Variant B achieves the target increase in 7-day retention, shows a statistically reliable improvement, and does not negatively impact task completion or longer-term retention, the team can consider implementing personalized study reminders for all users.

If the results are inconclusive or show negative engagement trends, the team should maintain the standard dashboard and consider testing different reminder frequencies or notification timing.



