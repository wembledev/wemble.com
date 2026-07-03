---
layout: stuff
title: "RAG for Health System Planning"
summary: Using Retrieval Augmented Generation to turn a health system's proprietary data into a question-answering tool, without training a model from scratch.
stack: Retrieval Augmented Generation · LLMs · Healthcare data
order: 6
---

Imagine a world where, with just a question, you can access a treasure trove of healthcare knowledge. Picture asking, "Where can I find support for substance use?" and not only receiving contact information but also detailed steps on how to enroll in the right program. That's the tool we set out to build for health system planning, using advanced AI on top of a vast repository of health data.

<div class="float-right ml-4 w-1/3">
  <img src="/assets/images/health-data_pixelized.png" alt="Health Data" class="w-full rounded-md">
</div>

### The Power of Data and Expertise

Health systems have access to an extensive array of data, ranging from clinical research to patient records, plus expert insights from leading healthcare professionals. The real magic happens when you can effectively tap into this data to provide precise and relevant answers. Keeping the raw data proprietary ensures privacy and security, but it can still provide rich context for the questions users ask.

### Transforming Data into Knowledge

To make this transformation, you need more than just data. You need a smart system that can model and interpret this information. Traditional methods for training AI models can be incredibly expensive and resource-intensive. Creating a specialized healthcare AI from scratch involves:

- **Supervised Learning**: Training models with labeled data, which requires significant manual effort.
- **Unsupervised Learning**: Letting the model find patterns in data, often needing extensive computational power.
- **Reinforcement Learning**: Training models through trial and error, which can be time-consuming and complex.

While these methods have their merits, they can be costly and cumbersome. The approach that worked best for this case was Retrieval Augmented Generation (RAG).

<div class="float-right ml-4 w-1/3">
  <img src="/assets/images/rag_pixelized.png" alt="The RAG process" class="w-full rounded-md">
</div>

### What is RAG?

RAG is like having a wise librarian who knows exactly where every piece of information is stored. When you ask a question, RAG doesn't just rely on pre-learned knowledge; it actively searches through the data resources to find the most relevant information. Think of it as combining the storytelling prowess of a chat model with the up-to-the-minute accuracy of a custom search engine.

For instance, say you want to know about the latest treatments for diabetes. Instead of the AI giving a generic answer, RAG dives into the latest research articles, clinical trial results, and expert opinions to provide a comprehensive, detailed response.

### Why RAG is Ideal for Healthcare

RAG offers several key benefits for a healthcare system:

- **Cost-Effective**: It leverages existing language models, reducing the need for expensive, from-scratch training.
- **Up-to-Date Information**: By continuously retrieving current data, it ensures that the answers are always based on the latest knowledge.
- **Contextually Relevant**: It provides responses tailored to the specific context of the user's query, making it highly useful and practical.

### The Takeaway

The goal was an AI that feels like a knowledgeable friend, someone you can turn to for reliable, expert advice. With RAG, the AI not only understands the questions but provides detailed, actionable answers: the wisdom of an entire healthcare team at your fingertips.

RAG lets you transform vast, complex data into simple, helpful answers, turning an AI from just a tool into a trusted guide through the healthcare journey. It's the same conviction behind our [Healthware](https://healthware.ca) explorations: healthcare information should be accessible to normal humans.
