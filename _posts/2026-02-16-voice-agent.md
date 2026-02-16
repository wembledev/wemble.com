---
layout: post
title: "I Got a Phone Call From Norm Macdonald"
subtitle: He's been dead since 2021. He called me anyway. The future is cool and scary.
date: February 16, 2026
---

My phone rang last Tuesday. I picked up. A familiar voice -- flat, unhurried, completely disinterested in getting to the point -- started telling me about a moth that walked into a podiatrist's office.

It was Norm Macdonald. Or rather, it was a voice clone of Norm Macdonald running on a Mac mini in my living room, calling me over a real phone line, powered by a stack of open source tools I'd spent the last few weeks stitching together.

I interrupted him. "Norm, what's the moth's name?"

He paused. Then, in that deadpan way: "You know, I never asked the moth his name. That's the tragedy of the whole thing, really. You meet a moth at a podiatrist's office, you think you have all the time in the world, and then -- well, you know how it goes."

I laughed. Then I felt a little weird about laughing. Then I laughed again.

## How it works

The whole thing is a voice agent -- an AI that answers (or makes) real phone calls. Not a chatbot with a microphone. An actual phone call, over the actual phone network, with an actual cloned voice.

Here's the stack:

- **[voip.ms](https://voip.ms/en/invite/NTIyMzcx)** gives me a real phone number on the public phone network
- **[baresip](https://github.com/baresip/baresip)** handles the SIP call signaling and audio
- **[mlx-whisper](https://github.com/ml-explore/mlx-examples/tree/main/whisper)** transcribes what I say in real time (speech-to-text, running locally)
- **[Grok](https://x.ai/)** figures out what Norm would say next (the LLM brain, via xAI's text API)
- **[Qwen3-TTS](https://github.com/ml-explore/mlx-audio)** says it out loud in Norm's voice (text-to-speech, running locally)

The speech recognition and voice synthesis both run on my Mac mini. No audio leaves my network. The only cloud call is to Grok for the text generation -- and that's just text tokens, not my voice.

The voice cloning is almost stupidly simple. I found a clean 10-second clip of Norm telling the moth joke, gave it to Qwen3-TTS as a reference, and told the model "this is what the voice sounds like." That's it. The model figures out the rest.

## The conversation

The personality prompt does a lot of heavy lifting. Norm's style is specific enough that a good LLM can nail it: dry, deadpan, low-energy delivery. Long stories that seem to go nowhere. Tangents within tangents. Self-deprecating asides. And then an absurd punchline you didn't see coming, delivered like he's reading a grocery list.

I asked him to tell me a joke. He committed to a three-minute setup about a guy who walks into a bar with a dog. The dog could talk, but only about economics. The bartender wasn't impressed. The punchline was terrible. Norm would have loved it.

I said "wait, hold on" mid-sentence and he actually stopped talking and listened. That's the barge-in feature -- the agent detects when you're actually speaking (not just background noise or echo) and shuts up. It checks between sentences, so there's a natural pause where you can jump in. Just like talking to a real person who respects conversational turn-taking. Unlike the real Norm, who famously did not.

## The scary part

Here's the thing that sits with me: I used a 10-second audio clip and an open source model that fits in 8 gigs of RAM. No special hardware. No cloud API for the voice. Just a Mac mini and some Python.

The voice isn't perfect -- it's recognizably synthetic if you listen for it. But on a phone call, with telephony-grade audio compressing everything to 8kHz anyway? It's convincing. My wife walked in, heard the call on speaker, and asked "who's that?"

Now scale that thought. If I can clone Norm Macdonald's voice with a 10-second clip and a weekend of hacking, what happens when this gets easier? When the models get better? When someone does this with *your* voice, calling *your* mom?

The future is genuinely cool. I got a phone call from one of my favorite comedians, three years after he died, and he was funny. That's amazing.

The future is also genuinely scary. The tools to do this are open, free, and getting better every month.

I don't have a clean answer for that tension. I just know that pretending the technology doesn't exist isn't a strategy. Better to understand it, build with it, and talk honestly about what it can do.

## Try it yourself

The whole thing is open source:

**[github.com/wembledev/voice-agent](https://github.com/wembledev/voice-agent)**

You'll need Ruby, Python, a [voip.ms](https://voip.ms/en/invite/NTIyMzcx) account ($1 gets you started), an [xAI API key](https://console.x.ai/), and a Mac with Apple Silicon. The [setup docs](https://github.com/wembledev/voice-agent/blob/main/docs/setup.md) walk through everything.

Clone a voice. Have a conversation. Feel weird about it. Welcome to the future.

---

*Built with [baresip](https://github.com/baresip/baresip), [mlx-whisper](https://github.com/ml-explore/mlx-examples/tree/main/whisper), [Qwen3-TTS via mlx-audio](https://github.com/ml-explore/mlx-audio), [Grok](https://x.ai/), and [voip.ms](https://voip.ms/en/invite/NTIyMzcx). All stitched together with Ruby and an unreasonable number of Norm Macdonald clips on YouTube.*
