---
layout: stuff
title: "Fitify: Fitness for People Who Hate Fitness"
summary: Micro-workouts disguised as normal life. Designed, built, and launched solo in a few weeks. No spandex required.
stack: Rails 8 · Turbo · Stimulus · SQLite
links:
  - label: fitify.ca
    url: https://fitify.ca
order: 3
---

<style>
.post-screenshot {
    box-shadow: 0 10px 40px rgba(0, 0, 0, 0.15), 0 4px 12px rgba(0, 0, 0, 0.1);
    max-width: 75%;
}
.tips-row {
    display: flex;
    gap: 1rem;
    margin: 2rem 0;
}
.tip-card {
    background: #fafafa;
    border: 1px solid #e5e7eb;
    padding: 1rem 1.25rem;
    border-radius: 12px;
    box-shadow: 0 1px 3px rgba(0, 0, 0, 0.06);
    flex: 1;
    font-size: 0.9em;
}
.tip-card strong {
    color: #374151;
    font-size: 0.95em;
}
.tip-card em {
    display: block;
    margin-top: 0.5rem;
    color: #6b7280;
    font-size: 0.85em;
}
@media (max-width: 640px) {
    .tips-row { flex-direction: column; }
    .post-screenshot { max-width: 100%; }
}
</style>

[Fitify](https://fitify.ca) is a fitness app for people who think "fitness app" sounds exhausting. Which... fair.

<img src="/assets/images/fitify-homepage.jpg" alt="Fitify Homepage" class="post-screenshot">

### The Concept

**Micro-workouts disguised as normal life.** No gym. No spandex. No one yelling at you about your macros.

The idea is simple: you're already doing stuff throughout your day. Walking to the mailbox. Doing dishes. Waiting for coffee to brew. What if all that stuff secretly counted as exercise?

Turns out it does. We just wrote it down and made it slightly more intentional.

### Some Example Tips

We grabbed some random ones. They might not even be our favourites! (We have 139 of them, and we're not about to play favourites like some fitness influencer picking their "top 5 abs exercises.")

<div class="tips-row">
<div class="tip-card">
🐕 <strong>The Guilt-Free Dog Walk</strong><br>
Your dog's been staring at you for 20 minutes. Take the hint.
<em>Secret: 15-20 min of cardio. Shhh.</em>
</div>

<div class="tip-card">
🧽 <strong>The Dish Disco</strong><br>
Put on a playlist while doing dishes. You'll move. It's inevitable.
<em>Secret: Stealth arm workout.</em>
</div>

<div class="tip-card">
🪥 <strong>The Toothbrush Squat</strong><br>
Brush your teeth? Do slow squats. The door is closed. Go nuts.
<em>Secret: 15-20 bodyweight squats.</em>
</div>
</div>

### All the Tips. Zero Judgment.

Browse by difficulty (Easy, Medium, Sneaky, or Legendary), or by body focus. Save your favorites. Get personalized recommendations based on your lifestyle. There's even a category called "Watching TV" because we *get* you.

<img src="/assets/images/fitify-onboarding.jpg" alt="Fitify Onboarding" class="post-screenshot">

### Why It's Different

Other fitness apps want you to become a gym person. They want you to track macros, log reps, and feel bad about yourself until you eventually hit "cancel subscription."

Fitify doesn't care if you ever set foot in a gym. We assume you won't. We *respect* that. Our whole vibe is: you're already doing stuff. Let's just... acknowledge it's exercise and move on.

No guilt. No shame. No before/after photos. Just "hey, you walked to the coffee machine 8 times today. That's like, 400 steps."

And no subscriptions, no "unlock premium to breathe correctly," no ads, no crypto. (The AI suggested crypto. We said no. Twice.)

### The Build

This was a solo build: one developer plus AI agents who don't sleep and occasionally suggest adding blockchain features. ("What if users could mint their squats as NFTs?" No. Stop it.)

The entire thing was designed, built, and launched in a few weeks. Rails 8, because we're not monsters. Turbo and Stimulus for the fancy bits. SQLite because we're trying to keep hosting costs lower than your gym membership that you're definitely still paying for.

It's the kind of project that makes you wonder why more apps aren't just... simpler. Useful. And not trying to extract $9.99/month from your pocket while showing you unskippable ads for protein powder.

### Try It

**[fitify.ca](https://fitify.ca)**: Go ahead. Your couch called. It said try one.

---

*Built from a couch in BC 🇨🇦 by [Wemble](https://wemble.com)*
